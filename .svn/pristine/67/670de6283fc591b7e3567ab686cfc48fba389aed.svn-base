package com.aven.dao;


public class HousePaymentDao extends DaoAdapter{
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author InWook
	 * 기능
	 * - 예약시 결제에 대한 정보를 INSERT
	 */
	@Override
	public void insertItem(Object object) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.HousePayment.addPaymentInfo", object);
	}


}
