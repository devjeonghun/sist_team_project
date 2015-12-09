package com.aven.model;

public class ReviewBean {
	private int hr_no;
	private String hr_title;
	private int m_no;
	private String hr_password;
	private String hr_contents;
	private int hr_hit; //**추가
	private String hr_regdate;
	private String hr_file; //**추가
	
	private String hr_fileContentType;
	private String hr_fileFileName;
	
	private int hr_score;
	private int h_no;
	private int h_like; //**수정
	
	private String m_name;//**추가
	
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getHr_no() {
		return hr_no;
	}
	public void setHr_no(int hr_no) {
		this.hr_no = hr_no;
	}
	public String getHr_title() {
		return hr_title;
	}
	public void setHr_title(String hr_title) {
		this.hr_title = hr_title;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getHr_password() {
		return hr_password;
	}
	public void setHr_password(String hr_password) {
		this.hr_password = hr_password;
	}
	public String getHr_contents() {
		return hr_contents;
	}
	public void setHr_contents(String hr_contents) {
		this.hr_contents = hr_contents;
	}
	public int getHr_hit() {
		return hr_hit;
	}
	public void setHr_hit(int hr_hit) {
		this.hr_hit = hr_hit;
	}
	public String getHr_regdate() {
		return hr_regdate;
	}
	public void setHr_regdate(String hr_regdate) {
		this.hr_regdate = hr_regdate;
	}
	public String getHr_file() {
		return hr_file;
	}
	public void setHr_file(String hr_file) {
		this.hr_file = hr_file;
	}
	public int getHr_score() {
		return hr_score;
	}
	public void setHr_score(int hr_score) {
		this.hr_score = hr_score;
	}
	public int getH_no() {
		return h_no;
	}
	public void setH_no(int h_no) {
		this.h_no = h_no;
	}
	
	public int getH_like() {
		return h_like;
	}
	public void setH_like(int h_like) {
		this.h_like = h_like;
	}
	public String getHr_fileFileName() {
		return hr_fileFileName;
	}
	public void setHr_fileFileName(String hr_fileFileName) {
		this.hr_fileFileName = hr_fileFileName;
	}
	
	
	public String getHr_fileContentType() {
		return hr_fileContentType;
	}
	public void setHr_fileContentType(String hr_fileContentType) {
		this.hr_fileContentType = hr_fileContentType;
	}
	@Override
	public String toString() {
		return "ReviewBean [hr_no=" + hr_no + ", hr_title=" + hr_title + ", m_no=" + m_no + ", hr_password="
				+ hr_password + ", hr_contents=" + hr_contents + ", hr_hit=" + hr_hit + ", hr_regdate=" + hr_regdate
				+ ", hr_file=" + hr_file + ", hr_fileContentType=" + hr_fileContentType + ", hr_fileFileName="
				+ hr_fileFileName + ", hr_score=" + hr_score + ", h_no=" + h_no + ", h_like=" + h_like + ", m_name="
				+ m_name + "]";
	}
	
}
