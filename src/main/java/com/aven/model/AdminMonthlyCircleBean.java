package com.aven.model;

public class AdminMonthlyCircleBean {
	private int AGEST;
	private int PERSENT;
	
	public int getAGEST() {
		return AGEST;
	}
	public void setAGEST(int aGEST) {
		AGEST = aGEST;
	}
	public int getPERSENT() {
		return PERSENT;
	}
	public void setPERSENT(int pERSENT) {
		PERSENT = pERSENT;
	}
	
	@Override
	public String toString() {
		return "AdminMonthlyCircleBean [AGEST=" + AGEST + ", PERSENT=" + PERSENT + "]";
	}
}
