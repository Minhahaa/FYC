package com.kh.yc.funding.model.vo;

import java.io.Serializable;
import java.util.Date;

public class Funding implements Serializable {

	private int fundNo;
	private String fundDate;
	private int userNo;
	private int projectNo;
	private int fundMoney;
	private int rewardNo;
	private int rewardCount;

	public Funding() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Funding(int fundNo, String fundDate, int userNo, int projectNo, int fundMoney, int rewardNo,
			int rewardCount) {
		this.fundNo = fundNo;
		this.fundDate = fundDate;
		this.userNo = userNo;
		this.projectNo = projectNo;
		this.fundMoney = fundMoney;
		this.rewardNo = rewardNo;
		this.rewardCount = rewardCount;
	}

	public int getFundNo() {
		return fundNo;
	}

	public void setFundNo(int fundNo) {
		this.fundNo = fundNo;
	}

	public String getFundDate() {
		return fundDate;
	}

	public void setFundDate(String fundDate) {
		this.fundDate = fundDate;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public int getProjectNo() {
		return projectNo;
	}

	public void setProjectNo(int projectNo) {
		this.projectNo = projectNo;
	}

	public int getFundMoney() {
		return fundMoney;
	}

	public void setFundMoney(int fundMoney) {
		this.fundMoney = fundMoney;
	}

	public int getRewardNo() {
		return rewardNo;
	}

	public void setRewardNo(int rewardNo) {
		this.rewardNo = rewardNo;
	}

	public int getRewardCount() {
		return rewardCount;
	}

	public void setRewardCount(int rewardCount) {
		this.rewardCount = rewardCount;
	}

	@Override
	public String toString() {
		return "Funding [fundNo=" + fundNo + ", fundDate=" + fundDate + ", userNo=" + userNo + ", projectNo="
				+ projectNo + ", fundMoney=" + fundMoney + ", rewardNo=" + rewardNo + ", rewardCount=" + rewardCount
				+ "]";
	}

}