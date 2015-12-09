package com.aven.model;

public class WishBean {
	private String h_no;
	private String m_id;
	public String getH_no() {
		return h_no;
	}
	public void setH_no(String h_no) {
		this.h_no = h_no;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	@Override
	public String toString() {
		return "WishBean [h_no=" + h_no + ", m_id=" + m_id + "]";
	}
	
}
