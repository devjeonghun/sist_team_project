package com.aven.dao;

import java.util.HashMap;


public class MyPageDao extends DaoAdapter {
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author JeongHun
	 * @param m_id
	 * 기능
	 * - MemberBean 형태의 DB SELECT
	 */
	@Override
	public Object selectList(Object m_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("com.aven.dao.MyPage.selectMyInfo", m_id);
	}

	/**
	 * @author JeongHun
	 * 기능
	 * - flag 1: 총 리뷰내역 출력 
	 * - flag 2: 리뷰 글쓰기 
	 * - flag 3: 나의 예약내역의 결제내역보기 
	 * - none :  나의 예약내역 출력
	 */
	@Override
	public Object selectListA(Object object) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		HashMap<Object, Integer> map = (HashMap<Object, Integer>) object;
		if (map.get("flag") == 1) {
			return getSqlSession().selectList("com.aven.dao.MyPage.selectReview", object);
		} else if (map.get("flag") == 2) {
			return getSqlSession().selectOne("com.aven.dao.MyPage.writeReview", object);
		} else if (map.get("flag") == 3) {
			return getSqlSession().selectList("com.aven.dao.MyPage.selectReservationDetail", object);
		} else {
			return getSqlSession().selectList("com.aven.dao.MyPage.selectReservation", object);
		}
	}
	
	/**
	 * @author JeongHun
	 * 기능
	 * - 리뷰게시판 HouseReviewBean 글쓰기 
	 */
	@Override
	public void insertItem(Object object) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertReview", object);
	}
	
	
	/**
	 * @author JeongHun
	 * 기능
	 * - 사용자 정보 수정 업데이트 
	 */
	@Override
	public void updateItem(Object object) {
		// TODO Auto-generated method stub
		getSqlSession().update("com.aven.dao.MyPage.updateMyInfo", object);
	}

	@Override
	public void updateItemA(Object object) {
		// TODO Auto-generated method stub
		getSqlSession().update("com.aven.dao.MyPage.updateHouseRate", object);
	}
	
}
