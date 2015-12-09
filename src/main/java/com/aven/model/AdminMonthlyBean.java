package com.aven.model;

public class AdminMonthlyBean {
	private String RSRV_YM;
	private int CNT;
	public String getRSRV_YM() {
		return RSRV_YM;
	}
	public void setRSRV_YM(String rSRV_YM) {
		RSRV_YM = rSRV_YM;
	}
	public int getCNT() {
		return CNT;
	}
	public void setCNT(int cNT) {
		CNT = cNT;
	}
	@Override
	public String toString() {
		return "AdminMonthlyBean [RSRV_YM=" + RSRV_YM + ", CNT=" + CNT + "]";
	}
}
