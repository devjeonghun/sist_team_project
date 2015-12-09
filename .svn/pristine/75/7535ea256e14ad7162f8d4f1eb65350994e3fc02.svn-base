package com.aven.dao;

import java.util.HashMap;

public class AdminMemberDao extends DaoAdapter{

	@Override
	public Object selectList(Object object) {
		// TODO Auto-generated method stub
		HashMap<Object, Object> map=(HashMap<Object, Object>)object;
		if(map.get("flag").equals(0)){
			return this.getSqlSession().selectOne("com.aven.dao.adminMember.selectAdmin",map.get("a_id"));
		}else if(map.get("flag").equals(1)){
			return this.getSqlSession().selectOne("com.aven.dao.adminMember.infoMember",map.get("m_no"));
		}else if(map.get("flag").equals(2)){
			return this.getSqlSession().selectList("com.aven.dao.adminMember.stepList");
		}
		return null;
	}

	@Override
	public Object selectList() {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("com.aven.dao.adminMember.selectMember");
	}

	@Override
	public void updateItem(Object bean) {
		// TODO Auto-generated method stub
		this.getSqlSession().update("com.aven.dao.adminMember.deleteMember",bean);
	}

	@Override
	public void updateItemA(Object mbean) {
		// TODO Auto-generated method stub
		this.getSqlSession().update("com.aven.dao.adminMember.updateMember",mbean);
	}
	
	

	
}
