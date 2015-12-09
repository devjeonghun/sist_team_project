package com.aven.dao;

import java.util.HashMap;
import java.util.List;

public class AdminTourDao extends DaoAdapter{
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author IkHyun
	 * 기능
	 * - 리스트 뿌려주는 용으로
	 */
	@Override
	public List<Object> selectList() {
		return this.getSqlSession().selectList("com.aven.dao.AdminTour.adminTourList");
	}
	
	/**
	 * @author IkHyun
	 * 기능
	 * - 상세보기용으로
	 */
	@Override
	public Object selectList(Object object) {

		HashMap<Object, Object> map = (HashMap<Object, Object>) object;
		
		if(map.get("flag").equals(0)){
			return this.getSqlSession().selectOne("com.aven.dao.AdminTour.adminTourInfo",map.get("ct_no")); 
		}
		return null;
	}

	@Override
	public void deleteItem(Object object) {
		// TODO Auto-generated method stub
		this.getSqlSession().delete("com.aven.dao.AdminTour.adminTourDel", object);
	}
	
}
