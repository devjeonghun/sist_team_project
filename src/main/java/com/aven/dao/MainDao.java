package com.aven.dao;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class MainDao extends DaoAdapter {
	// TODO �ʿ��� �͸� �������̵� �Ͽ� ���
	
	/**
	 * @author JeongHun
	 * ���
	 * - main.jsp : ajaxó���� ����
	 */
	@Override
	public List<Object> selectList() {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("com.aven.dao.Main.mainHSelect");
	}

	/**
	 * @author JeongHun
	 * ��볻��
	 * - main.jsp : ajaxó���� ����
	 */
	@Override
	public List<Object> selectList(Object object) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("com.aven.dao.Main.mainTSelect");
	}

}
