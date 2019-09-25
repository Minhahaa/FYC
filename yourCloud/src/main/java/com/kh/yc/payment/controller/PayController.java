package com.kh.yc.payment.controller;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.kh.yc.delivery.model.vo.Delivery;
import com.kh.yc.funding.model.vo.Funding;
import com.kh.yc.payment.model.service.PayService;
import com.kh.yc.payment.model.vo.Payment;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.ScheduleData;
import com.siot.IamportRestClient.request.ScheduleEntry;

@RestController()
public class PayController {

	@Autowired
	PayService ps;

	IamportClient iamportClient = new IamportClient("8768417829708074",
			"xZUSL0NpyUxc1GBMg0lYT41iQYv8hFgOFbGqcuQKonXq4yclyyjsCkKsjgBAVRoB351fzSZYfXojvBE4");

	@RequestMapping("billingKey.fd")
	public ModelAndView billingKey(String customer_uid, Delivery delivery, Funding fund, HttpServletRequest request, ModelAndView mv) {
		System.out.println(delivery);
		System.out.println(fund);
		fund.setBlind("0");
		int result = ps.insertFund(fund);
		System.out.println(customer_uid);
		System.out.println("여기는 빌링키 컨트롤러");
		try {
			Random random = new Random();

			String merchantUid = "fundi" + random.nextInt(100000);

			BigDecimal amount = new BigDecimal(fund.getFundMoney());
			ScheduleData sd = new ScheduleData(customer_uid);
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MINUTE, 5);
			Date schedule_at = cal.getTime();

			ScheduleEntry se = new ScheduleEntry(merchantUid, schedule_at, amount);

			Payment pay = new Payment();

			pay.setUserNo(Integer.parseInt(customer_uid));
			pay.setPayNo(merchantUid);
			pay.setPayStatus("결제전");
			int price = amount.intValue();
			pay.setAmount(price);
			result = ps.insertPayment(pay);
			
			sd.addSchedule(se);
			
			iamportClient.subscribeSchedule(sd);
			
			result =ps.insertDelivery(delivery);
			result =ps.insertDeliveryStatus(delivery);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mv.setViewName("jsonView");
		return mv;
	}

	public void RePay(String merchantUid) {
		try {
			Payment p = ps.selectRePay(merchantUid);
			System.out.println(p);
			merchantUid = p.getPayNo();
			Random random = new Random();

			String merchantUid2 = "refund" + random.nextInt(100000);
			String customer_uid = String.valueOf(p.getUserNo());

			BigDecimal amount = new BigDecimal(p.getAmount());
			ScheduleData sd = new ScheduleData(customer_uid);
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.MINUTE, 1);
			Date schedule_at = cal.getTime();

			ScheduleEntry se = new ScheduleEntry(merchantUid2, schedule_at, amount);

			Payment pay = new Payment();
			pay.setUserNo(Integer.parseInt(customer_uid));
			pay.setPayNo(merchantUid);
			pay.setPayStatus("결제실패");
			int price = amount.intValue();
			pay.setAmount(price);
			ps.updatePayStatus(pay);
			sd.addSchedule(se);
			iamportClient.subscribeSchedule(sd);
		} catch (IamportResponseException | IOException e) {
			e.printStackTrace();
		} catch (NullPointerException e) {
			
		}

	}
}
