package com.aven.dao;


public class HousePaymentDao extends DaoAdapter{
	// TODO �ʿ��� �͸� �������̵� �Ͽ� ���
	
	/**
	 * @author InWook
	 * ���
	 * - ����� ������ ���� ������ INSERT
	 */
	@Override
	public void insertItem(Object object) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.HousePayment.addPaymentInfo", object);
	}


}
