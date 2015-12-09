package com.aven.dao;


public class HouseReserveDao extends DaoAdapter {
	// TODO 필요한 것만 오버라이드 하여 사용
	

	/**
	 * @author InWook
	 * 기능
	 * - HouseController에서 reservation.do 를 수행할 때 예약 페이지에서 방 정보를 가져오기 위함
	 */
	@Override
	public Object selectList(Object object) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.HouseReserve.getRoomFileName", object);
	}

	/**
	 * @author InWook
	 * 기능
	 * - HouseController에서 reservation.do 를 수행할 때 로그인 하려는 사용자의 정보를 가져옴
	 */
	@Override
	public Object selectListA(Object object) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.HouseReserve.getMemberInfo", object);
	}


	/**
	 * @author InWook
	 * 기능
	 * - 예약시 HOUSE_ROOM_RESERVE TABLE에 등록
	 */
	@Override
	public void insertItem(Object object) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.HouseReserve.addReserveInfo", object);
	}

	
}
