package com.aven.dao;

import java.util.HashMap;

import org.springframework.stereotype.Component;

@Component
public class AdminHouseDao extends DaoAdapter {
	// TODO 필요한 것만 오버라이드 하여 사용

	/**
	 * @author EunJi
	 * AdminHouse - house 리스트 출력 + 검색기능 추가
	 */
	
	
	@Override
	public Object selectList(Object object) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("com.aven.dao.AdminHouse.selectHouseList", object);
	}

	/**
	 * @author EunJi
	 * AdminHouse - 방금 insert 한 h_no select
	 */
	
	@Override
	public Object selectList() {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.AdminHouse.selectH_NO");
	}

	
	/**
	 * @author EunJi
	 * 하우스 등록
	 */
	
	@Override
	public void insertItem(Object hBean) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.AdminHouse.InsertHouse", hBean);
	}

	/**
	 * @author EunJi
	 * 하우스 수정
	 */
	
	@Override
	public void updateItem(Object hBean) {
		// TODO Auto-generated method stub
		this.getSqlSession().update("com.aven.dao.AdminHouse.UpdateHouse", hBean);
	}
	
	/**
	 * @author EunJi
	 * room List 출력 / Room Info 출력(Edit할 경우)
	 */

	@Override
	public Object selectListA(Object object) {
		// TODO Auto-generated method stub
		HashMap<Object, Object>map = (HashMap<Object, Object>)object;
		if(map.get("flag").equals(0)){
			return this.getSqlSession().selectList("com.aven.dao.AdminHouse.selectRoomList", map.get("h_no"));
		}else if(map.get("flag").equals(1)){
			return this.getSqlSession().selectOne("com.aven.dao.AdminHouse.selectRoomInfo", map);
		}
		
		return null;
	}

	/**
	 * @author EunJi
	 * Room Insert
	 */
	
	
	@Override
	public void insertItemA(Object room) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.AdminHouse.InsertRoom", room);
	}
	
	/**
	 * @author EunJi
	 * Room Edit
	 */

	@Override
	public void updateItemA(Object room) {
		// TODO Auto-generated method stub
		this.getSqlSession().update("com.aven.dao.AdminHouse.UpdateRoom", room);
	}
	
	
	
	
}
