package com.aven.dao;


public class HouseReserveDao extends DaoAdapter {
	// TODO �ʿ��� �͸� �������̵� �Ͽ� ���
	

	/**
	 * @author InWook
	 * ���
	 * - HouseController���� reservation.do �� ������ �� ���� ���������� �� ������ �������� ����
	 */
	@Override
	public Object selectList(Object object) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.HouseReserve.getRoomFileName", object);
	}

	/**
	 * @author InWook
	 * ���
	 * - HouseController���� reservation.do �� ������ �� �α��� �Ϸ��� ������� ������ ������
	 */
	@Override
	public Object selectListA(Object object) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.HouseReserve.getMemberInfo", object);
	}


	/**
	 * @author InWook
	 * ���
	 * - ����� HOUSE_ROOM_RESERVE TABLE�� ���
	 */
	@Override
	public void insertItem(Object object) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.HouseReserve.addReserveInfo", object);
	}

	
}
