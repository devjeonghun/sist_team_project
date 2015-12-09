package com.aven.model;

public class TourBean {
	private int ct_no;
	private String ct_title;
	private int m_no;
	private String m_name;
	private String ct_password;
	private String ct_contents;
	private int ct_hit;
	private String ct_regdate;
	private String ct_file;
	private int page;
	public int getCt_no() {
		return ct_no;
	}
	public void setCt_no(int ct_no) {
		this.ct_no = ct_no;
	}
	public String getCt_title() {
		return ct_title;
	}
	public void setCt_title(String ct_title) {
		this.ct_title = ct_title;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getCt_password() {
		return ct_password;
	}
	public void setCt_password(String ct_password) {
		this.ct_password = ct_password;
	}
	public String getCt_contents() {
		return ct_contents;
	}
	public void setCt_contents(String ct_contents) {
		this.ct_contents = ct_contents;
	}
	public int getCt_hit() {
		return ct_hit;
	}
	public void setCt_hit(int ct_hit) {
		this.ct_hit = ct_hit;
	}
	public String getCt_regdate() {
		return ct_regdate;
	}
	public void setCt_regdate(String ct_regdate) {
		this.ct_regdate = ct_regdate;
	}
	public String getCt_file() {
		return ct_file;
	}
	public void setCt_file(String ct_file) {
		this.ct_file = ct_file;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	@Override
	public String toString() {
		return "TourBean [ct_no=" + ct_no + ", ct_title=" + ct_title + ", m_no=" + m_no + ", m_name=" + m_name
				+ ", ct_password=" + ct_password + ", ct_contents=" + ct_contents + ", ct_hit=" + ct_hit
				+ ", ct_regdate=" + ct_regdate + ", ct_file=" + ct_file + ", page=" + page + "]";
	}
	
}
