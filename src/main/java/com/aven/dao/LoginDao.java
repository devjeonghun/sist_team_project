package com.aven.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.aven.model.MemberBean;
@Component
public class LoginDao extends DaoAdapter{
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author MinSeok
	 * 기능
	 * - 입력 요망
	 */
	@Override
	public Object selectList(Object dong) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList("com.aven.dao.Login.selectZipcode", dong);
	}
	
	/**
	 * @author MinSeok
	 * 기능
	 * - 입력 요망
	 */
	@Override
	public Object selectListA(Object m_email) {
		// TODO Auto-generated method stub 
		return getSqlSession().selectOne("com.aven.dao.Login.selectMemberBean",m_email);
	}

	/**
	 * @author MinSeok
	 * 기능
	 * - 입력 요망
	 */
	@Override
	public void insertItem(Object bean) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.Login.memberJoin", bean);
	}

	@Override
	public void updateItem(Object wbean) {
		// TODO Auto-generated method stub
		this.getSqlSession().update("com.aven.dao.Login.updateWishList",wbean);
	}

	@Override
	public void updateItemA(Object wbean) {
		// TODO Auto-generated method stub
		this.getSqlSession().update("com.aven.dao.Login.deleteWishList",wbean);
	}

	
	

	
}
