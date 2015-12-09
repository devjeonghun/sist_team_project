package com.aven.model;

public class HouseReservationBean {
	private int hrr_no;
	private int h_no;
	private int r_no;
	private int m_no;
	private String hrr_start;
	private String hrr_end;
	private String hrr_state;
	private int hrr_price;
	private String hrr_request;

	public int getHrr_no() {
		return hrr_no;
	}

	public void setHrr_no(int hrr_no) {
		this.hrr_no = hrr_no;
	}

	public int getH_no() {
		return h_no;
	}

	public void setH_no(int h_no) {
		this.h_no = h_no;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getHrr_start() {
		return hrr_start;
	}

	public void setHrr_start(String hrr_start) {
		this.hrr_start = hrr_start;
	}

	public String getHrr_end() {
		return hrr_end;
	}

	public void setHrr_end(String hrr_end) {
		this.hrr_end = hrr_end;
	}

	public String getHrr_state() {
		return hrr_state;
	}

	public void setHrr_state(String hrr_state) {
		this.hrr_state = hrr_state;
	}

	public int getHrr_price() {
		return hrr_price;
	}

/*	public void setHrr_price(int hrr_price) {
		this.hrr_price = hrr_price;
	}*/
	//할인률 적용에 대하여, 소수점 문제 해결
	public void setHrr_price(double hrr_price) {
		this.hrr_price = (int)Math.round(hrr_price);
	}

	public String getHrr_request() {
		return hrr_request;
	}

	public void setHrr_request(String hrr_request) {
		this.hrr_request = hrr_request;
	}

	@Override
	public String toString() {
		return "HouseReservationBean [hrr_no=" + hrr_no + ", h_no=" + h_no + ", r_no=" + r_no + ", m_no=" + m_no
				+ ", hrr_start=" + hrr_start + ", hrr_end=" + hrr_end + ", hrr_state=" + hrr_state + ", hrr_price="
				+ hrr_price + ", hrr_request=" + hrr_request + "]";
	}

}
