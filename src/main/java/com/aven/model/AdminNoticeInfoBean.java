package com.aven.model;

public class AdminNoticeInfoBean {
	private String cn_no;
	private String cn_title;
	private String a_name;
	private String cn_contents;
	private int cn_hit;
	private String cn_regdate;
	private String cn_file;
	
	public String getCn_no() {
		return cn_no;
	}
	public void setCn_no(String cn_no) {
		this.cn_no = cn_no;
	}
	public String getCn_title() {
		return cn_title;
	}
	public void setCn_title(String cn_title) {
		this.cn_title = cn_title;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	public String getCn_contents() {
		return cn_contents;
	}
	public void setCn_contents(String cn_contents) {
		this.cn_contents = cn_contents;
	}
	public int getCn_hit() {
		return cn_hit;
	}
	public void setCn_hit(int cn_hit) {
		this.cn_hit = cn_hit;
	}
	public String getCn_regdate() {
		return cn_regdate;
	}
	public void setCn_regdate(String cn_regdate) {
		this.cn_regdate = cn_regdate;
	}
	public String getCn_file() {
		return cn_file;
	}
	public void setCn_file(String cn_file) {
		this.cn_file = cn_file;
	}
	
	@Override
	public String toString() {
		return "AdminNoticeInfoBean [cn_no=" + cn_no + ", cn_title=" + cn_title + ", a_name=" + a_name
				+ ", cn_contents=" + cn_contents + ", cn_hit=" + cn_hit + ", cn_regdate=" + cn_regdate + ", cn_file="
				+ cn_file + "]";
	}
}
