package com.aven.dao;

import java.util.HashMap;
import java.util.List;

import com.aven.model.TourBean;

public class TourDao extends DaoAdapter {
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author IkHyun
	 * 기능
	 * - 리스트 뿌려주는 용으로
	 */
	@Override
	public List<Object> selectList() {
		return this.getSqlSession().selectList("com.aven.dao.Tour.tourList");
	}

	/**
	 * @author IkHyun
	 * 기능
	 * - 상세페이지용, 수정 정보 가져오기
	 */
	@Override
	public Object selectList(Object object) {
		
		HashMap<Object, Object> map = (HashMap<Object, Object>)object;
		
		if(map.get("flag").equals(0)){
			return this.getSqlSession().selectOne("com.aven.dao.Tour.tourInfo",map.get("ct_no"));
		}
		return null;
	}
	
	/**
	 * @author IkHyun
	 * 기능
	 * - 글 쓸 때 m_no 가져오는 것
	 */
	@Override
	public Object selectListA(Object id) {
		return this.getSqlSession().selectOne("com.aven.dao.Tour.selectMno",id);
	}	
	
	
	/**
	 * @author IkHyun
	 * 기능
	 * - 삭제용으로
	 */
	@Override
	public void deleteItem(Object object) {
		this.getSqlSession().delete("com.aven.dao.Tour.tourDelete",object);
	}
	
	/**
	 * @author IkHyun
	 * 기능
	 * - 인서트용으로
	 */
	@Override
	public void insertItem(Object bean) {
		this.getSqlSession().insert("com.aven.dao.Tour.tourInsert",bean);
	}
	

	/**
	 * @author IkHyun
	 * 기능
	 * - 조회수 증가
	 */
	@Override
	public void updateItem(Object object) {
		this.getSqlSession().update("com.aven.dao.Tour.tourHit", object);
	}

	/**
	 * @author IkHyun
	 * 기능
	 * - 수정
	 */
	@Override
	public void updateItemA(Object object) {
		
		HashMap<Object, Object> map = (HashMap<Object, Object>)object;
		
		if(map.get("flag").equals(0)){
			this.getSqlSession().update("com.aven.dao.Tour.tourModifyInfo", map.get("bean"));
		}
	}
	
}
