package com.aven.dao;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class MainDao extends DaoAdapter {
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author JeongHun
	 * 기능
	 * - main.jsp : ajax처리를 위함
	 */
	@Override
	public List<Object> selectList() {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("com.aven.dao.Main.mainHSelect");
	}

	/**
	 * @author JeongHun
	 * 사용내용
	 * - main.jsp : ajax처리를 위함
	 */
	@Override
	public List<Object> selectList(Object object) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("com.aven.dao.Main.mainTSelect");
	}

}
