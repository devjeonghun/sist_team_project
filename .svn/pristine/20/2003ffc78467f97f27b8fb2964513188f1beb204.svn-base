package com.aven.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.support.SqlSessionDaoSupport;

/*@Component*/
public class AdminBoardNoticeDao extends DaoAdapter{
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author 작성자 입력 요망
	 * 기능
	 * - 관리자 공지사항 게시판 리스트 select
	 */
	@Override
	public ArrayList selectList() {
		// TODO Auto-generated method stub
		return (ArrayList) this.getSqlSession().selectList("com.aven.dao.AdminBoard.selectNoticeList");
	}

	@Override
	public Object selectList(Object object) {
		// TODO Auto-generated method stub
		HashMap<Object, Object> map = (HashMap<Object, Object>)object;
		
		if(map.get("flag").equals(0)){
			return this.getSqlSession().selectList("com.aven.dao.AdminBoard.selectFaqList");
		}else if (map.get("flag").equals(1)) {
			return this.getSqlSession().selectList("com.aven.dao.AdminBoard.selectQaList");
		}else if (map.get("flag").equals("aqi")) {
			return this.getSqlSession().selectOne("com.aven.dao.AdminBoard.selectQaInfoo",map.get("cq_no"));
		}else if(map.get("flag").equals("fi")){
			return this.getSqlSession().selectOne("com.aven.dao.AdminBoard.selectFqInfo",map.get("cf_no"));
		}
		
		return null;
	}

	@Override
	public void deleteItem(Object object) {
		// TODO Auto-generated method stub		
		HashMap<Object, Object> map = (HashMap<Object, Object>)object;
		
		if(map.get("flag").equals(0)){
			this.getSqlSession().delete("com.aven.dao.AdminBoard.qaDel",map.get("cq_no"));			
		}else if (map.get("flag").equals(1)) {
			this.getSqlSession().delete("com.aven.dao.AdminBoard.faqDel",map.get("cf_no"));
		}else if(map.get("flag").equals(2)){
			this.getSqlSession().delete("com.aven.dao.AdminBoard.noticeDel",map.get("cn_no"));
		}
		
	}
	
	@Override
	public void insertItem(Object bean) {
		// TODO Auto-generated method stub
		/*HashMap<Object, Object> map = (HashMap<Object, Object>)object;*/
		
		this.getSqlSession().insert("com.aven.dao.AdminBoard.insertNot",bean);			
		/*if(map.get("flag").equals("ni")){
			this.getSqlSession().insert("com.aven.dao.AdminBoard.insertNot",map.get("bean"));			
		}*/
	}
	
	

	
	
}
