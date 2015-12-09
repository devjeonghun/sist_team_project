package com.aven.model;

public class AdminBean {

	private int a_no;
	private String a_id;
	private String a_password;
	private String a_name;
	public int getA_no() {
		return a_no;
	}
	public void setA_no(int a_no) {
		this.a_no = a_no;
	}
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getA_password() {
		return a_password;
	}
	public void setA_password(String a_password) {
		this.a_password = a_password;
	}
	public String getA_name() {
		return a_name;
	}
	public void setA_name(String a_name) {
		this.a_name = a_name;
	}
	@Override
	public String toString() {
		return "AdminBean [a_no=" + a_no + ", a_id=" + a_id + ", a_password=" + a_password + ", a_name=" + a_name + "]";
	}
	
}
