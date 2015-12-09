package com.aven.model;

public class BoardQaBean {

	private int cq_no;
	private String cq_title;
	private int m_no;
	private String cq_password;
	private String cq_contents;
	private int cq_hit;
	private String cq_regdate;
	private int cq_prno;
	private int cq_step;
	private int cq_reply;
	private String m_name;
	private String m_id;
	private int page;

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public int getCq_no() {
		return cq_no;
	}

	public void setCq_no(int cq_no) {
		this.cq_no = cq_no;
	}

	public String getCq_title() {
		return cq_title;
	}

	public void setCq_title(String cq_title) {
		this.cq_title = cq_title;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getCq_password() {
		return cq_password;
	}

	public void setCq_password(String cq_password) {
		this.cq_password = cq_password;
	}

	public String getCq_contents() {
		return cq_contents;
	}

	public void setCq_contents(String cq_contents) {
		this.cq_contents = cq_contents;
	}

	public int getCq_hit() {
		return cq_hit;
	}

	public void setCq_hit(int cq_hit) {
		this.cq_hit = cq_hit;
	}

	public String getCq_regdate() {
		return cq_regdate;
	}

	public void setCq_regdate(String cq_regdate) {
		this.cq_regdate = cq_regdate;
	}

	public int getCq_prno() {
		return cq_prno;
	}

	public void setCq_prno(int cq_prno) {
		this.cq_prno = cq_prno;
	}

	public int getCq_step() {
		return cq_step;
	}

	public void setCq_step(int cq_step) {
		this.cq_step = cq_step;
	}

	public int getCq_reply() {
		return cq_reply;
	}

	public void setCq_reply(int cq_reply) {
		this.cq_reply = cq_reply;
	}

	@Override
	public String toString() {
		return "BoardQaBean [cq_no=" + cq_no + ", cq_title=" + cq_title + ", m_no=" + m_no + ", cq_password="
				+ cq_password + ", cq_contents=" + cq_contents + ", cq_hit=" + cq_hit + ", cq_regdate=" + cq_regdate
				+ ", cq_prno=" + cq_prno + ", cq_step=" + cq_step + ", cq_reply=" + cq_reply + ", m_name=" + m_name
				+ ", m_id=" + m_id + ", page=" + page + "]";
	}

	

}
