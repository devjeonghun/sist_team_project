package com.aven.model;

public class BoardFnqBean {
	private int cf_no;
	private String cf_title;
	private int a_no;
	private String cf_contents;
	private String a_name;

	public String getA_name() {
		return a_name;
	}

	public void setA_name(String a_name) {
		this.a_name = a_name;
	}

	public int getCf_no() {
		return cf_no;
	}

	public void setCf_no(int cf_no) {
		this.cf_no = cf_no;
	}

	public String getCf_title() {
		return cf_title;
	}

	public void setCf_title(String cf_title) {
		this.cf_title = cf_title;
	}

	public int getA_no() {
		return a_no;
	}

	public void setA_no(int a_no) {
		this.a_no = a_no;
	}

	public String getCf_contents() {
		return cf_contents;
	}

	public void setCf_contents(String cf_contents) {
		this.cf_contents = cf_contents;
	}

	@Override
	public String toString() {
		return "BoardFnqBean [cf_no=" + cf_no + ", cf_title=" + cf_title + ", a_no=" + a_no + ", cf_contents="
				+ cf_contents + "]";
	}

}
