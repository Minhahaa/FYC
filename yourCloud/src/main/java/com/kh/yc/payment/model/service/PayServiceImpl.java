package com.kh.yc.payment.model.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.kh.yc.delivery.model.vo.Delivery;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.payment.controller.PayController;
import com.kh.yc.payment.model.dao.PayDao;
import com.kh.yc.payment.model.vo.Sponsor;
import com.kh.yc.project.model.vo.Project;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.UnscheduleData;
import com.siot.IamportRestClient.response.Payment;

@Service
@EnableScheduling
public class PayServiceImpl implements PayService {
	@Autowired
	PayDao pd;
	@Autowired
	PayController pc;
	@Autowired
	private SqlSessionTemplate sqlSession;

	IamportClient iamportClient = new IamportClient("8768417829708074",
			"xZUSL0NpyUxc1GBMg0lYT41iQYv8hFgOFbGqcuQKonXq4yclyyjsCkKsjgBAVRoB351fzSZYfXojvBE4");
	
	@Override
	@Scheduled(cron = "0 59 23 * * *")
	public void testJobMethod() {
		System.out.println(2359 + "스케쥴러");
		int result = pd.updateProjectOpen(sqlSession);
		ArrayList<Project> fundSuccessProject = pd.fundSuccessProject(sqlSession);
		System.out.println("d"+fundSuccessProject);
		pd.updateProjectSuccess(sqlSession);
		pd.insertAdjust(sqlSession, fundSuccessProject);
		
		try {
			ArrayList<Funding> fundFailProject = pd.fundFailProject(sqlSession);
			ArrayList<com.kh.yc.payment.model.vo.Payment> merchantId = pd.failMerchantID(sqlSession, fundFailProject);
			for (com.kh.yc.payment.model.vo.Payment p : merchantId) {
				System.out.println(p + "에 해당하는 결제 취소");
				UnscheduleData unscheduleData = new UnscheduleData(p.getUserNo() + "");
				unscheduleData.addMerchantUid(p.getPayNo());
				iamportClient.unsubscribeSchedule(unscheduleData);
			}

		} catch (NullPointerException e) {
			System.out.println("예약 취소건 없음");
		} catch (IamportResponseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		pd.updateProjectFail(sqlSession);
		if (fundSuccessProject.size() > 0) {
			ArrayList<Funding> fundingList = pd.fundingList(sqlSession, fundSuccessProject);
			if (fundingList.size() > 0) {
				pd.insertFundingSuccess(sqlSession, fundingList);
			}
		}
		try {
			List<Payment> status = iamportClient.paymentsByStatus("all").getResponse().getList();

			for (Payment pay : status) {
				String payStatus = iamportClient.paymentByImpUid(pay.getImpUid()).getResponse().getStatus();
				com.kh.yc.payment.model.vo.Payment payment = new com.kh.yc.payment.model.vo.Payment();

				if (payStatus.equals("failed")) {
					String merchantUid = pay.getMerchantUid();
					pc.RePay(merchantUid);
				} else if (payStatus.equals("paid")) {
					payment.setPayNo(pay.getMerchantUid());
					payment.setPayStatus("결제성공");

					updatePayStatus(payment);

				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void insertPayment(com.kh.yc.payment.model.vo.Payment pay) {
		pd.insertPayment(sqlSession, pay);

	}

	@Override
	public com.kh.yc.payment.model.vo.Payment selectRePay(String merchantUid) {
		return pd.selectRePay(sqlSession, merchantUid);
	}

	@Override
	public void updatePayStatus(com.kh.yc.payment.model.vo.Payment pay) {
		pd.updatePayStatus(sqlSession, pay);

	}

	@Override
	public void insertSponsor(Sponsor sp) {
		pd.insertSponsor(sqlSession, sp);
	}

	@Override
	public int insertFund(ArrayList<Funding> fundList, ArrayList<Delivery> deliveryList) {
		int result = 0;
		for (int i = 0; i < fundList.size(); i++) {
			result = pd.insertFund(sqlSession, fundList.get(i));
			if (result > 0) {
				result = pd.insertDelivery(sqlSession, deliveryList.get(i));
				if (result > 0) {
					result = pd.insertDeliveryStatus(sqlSession, deliveryList.get(i));
				}
			}
		}

		return 0;
	}

}