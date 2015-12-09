package com.aven.model;

public class HousePaymentBean {
	private int r_no;
	private int h_no;
	private int m_no;
	private int r_price;
	private String st;
	private String en;
	
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public int getR_no() {
		return r_no;
	}
	public void setR_no(int r_no) {
		this.r_no = r_no;
	}
	public int getH_no() {
		return h_no;
	}
	public void setH_no(int h_no) {
		this.h_no = h_no;
	}
	public int getR_price() {
		return r_price;
	}
	public void setR_price(int r_price) {
		this.r_price = r_price;
	}
	public String getSt() {
		return st;
	}
	public void setSt(String st) {
		this.st = st;
	}
	public String getEn() {
		return en;
	}
	public void setEn(String en) {
		this.en = en;
	}
	@Override
	public String toString() {
		return "HousePaymentBean [r_no=" + r_no + ", h_no=" + h_no + ", m_no=" + m_no + ", r_price=" + r_price + ", st="
				+ st + ", en=" + en + "]";
	}
	
}
