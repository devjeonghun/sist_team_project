package com.aven.model;

public class AdminMonthlyTotalSaleBean {
	
	private String STARTDATE;
	private int TOTAL;
	
	public String getSTARTDATE() {
		return STARTDATE;
	}
	public void setSTARTDATE(String sTARTDATE) {
		STARTDATE = sTARTDATE;
	}
	public int getTOTAL() {
		return TOTAL;
	}
	public void setTOTAL(int tOTAL) {
		TOTAL = tOTAL;
	}

	@Override
	public String toString() {
		return "AdminMonthlyTotalSaleBean [STARTDATE=" + STARTDATE + ", TOTAL=" + TOTAL + "]";
	}
}
