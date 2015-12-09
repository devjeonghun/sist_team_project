package com.aven.dao;

import java.util.HashMap;


public class MyPageDao extends DaoAdapter {
	// TODO �ʿ��� �͸� �������̵� �Ͽ� ���
	
	/**
	 * @author JeongHun
	 * @param m_id
	 * ���
	 * - MemberBean ������ DB SELECT
	 */
	@Override
	public Object selectList(Object m_id) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne("com.aven.dao.MyPage.selectMyInfo", m_id);
	}

	/**
	 * @author JeongHun
	 * ���
	 * - flag 1: �� ���䳻�� ��� 
	 * - flag 2: ���� �۾��� 
	 * - flag 3: ���� ���೻���� ������������ 
	 * - none :  ���� ���೻�� ���
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
	 * ���
	 * - ����Խ��� HouseReviewBean �۾��� 
	 */
	@Override
	public void insertItem(Object object) {
		// TODO Auto-generated method stub
		getSqlSession().insert("insertReview", object);
	}
	
	
	/**
	 * @author JeongHun
	 * ���
	 * - ����� ���� ���� ������Ʈ 
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
