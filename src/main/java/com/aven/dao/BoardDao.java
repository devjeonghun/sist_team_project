package com.aven.dao;

import java.util.HashMap;
import java.util.List;

import com.aven.model.BoardQaBean;

/*@Component*/
public class BoardDao extends DaoAdapter {
	// TODO �ʿ��� �͸� �������̵� �Ͽ� ���
	
	/**
	 * @author KwangSeok
	 * qa.jsp ������ ����Ʈ �ѷ��� 
	 */
	@Override
	public List<Object> selectList() {
		// TODO Auto-generated method stub
		
		
		return this.getSqlSession().selectList("com.aven.dao.Board.qaList");
	}

	
	/**
	 * @author KwangSeok
	 * ���
	 * qa �۾���� m_no�� �������� �������� ����
	 */
	@Override
	public Object selectList(Object id) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.Board.selectMNO",id);
	}
	
	/**
	 * @author KwangSeok
	 * 
	 * qa �����������ö� HIT�� ����
	 */
	@Override
	public void updateItem(Object object) {
		// TODO Auto-generated method stub
		HashMap<Object, Object> map = (HashMap<Object, Object>)object;
		
		if(map.get("flag").equals(0)){
			this.getSqlSession().update("com.aven.dao.Board.qaHit",map);			
		}else if(map.get("flag").equals("n1")) {
			this.getSqlSession().update("com.aven.dao.Board.noHit",map);
		}
		
	}
	
	/**
	 * @author KwangSeok
	 * 
	 * qa ������ ����
	 */
	@Override
	public void updateItemA(Object object) {
		// TODO Auto-generated method stub
		HashMap<Object, Object> map = (HashMap<Object, Object>)object;
		
		if(map.get("flag").equals("qm")){
			System.out.println(map);
			this.getSqlSession().update("com.aven.dao.Board.qaModify",map.get("bean"));
		}
	}


	/**
	 * @author KwangSeok
	 * ���
	 * Q&A�� ������
	 */
	@Override
	public Object selectListA(Object obejct) {
		// TODO Auto-generated method stub
		
		HashMap<Object, Object> map = (HashMap<Object, Object>)obejct;
		
		if(map.get("flag").equals(0)){			
			return this.getSqlSession().selectOne("com.aven.dao.Board.boardQaInfo",map.get("cq_no"));
		}else if (map.get("flag").equals(1)){
			return this.getSqlSession().selectList("com.aven.dao.Board.NoticeList");
		}else if (map.get("flag").equals("n1")) {
			return this.getSqlSession().selectOne("com.aven.dao.Board.noticeInfo",map.get("cn_no"));
		}else if (map.get("flag").equals("f1")) {
			return this.getSqlSession().selectList("com.aven.dao.Board.faqList");
		}
		return null;
	}

	/**
	 * @author KwangSeok
	 * ���
	 * qa �۾��� �Է±��
	 */
	@Override
	public void insertItem(Object bean) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.Board.boardQaInsert",bean);

	}
	
	/**
	 * @author KwangSeok
	 * 
	 * qa ������ ����
	 */
	@Override
	public void deleteItem(Object cq_no) {
		// TODO Auto-generated method stub
		this.getSqlSession().delete("com.aven.dao.Board.boardQaDelete",cq_no);
	}



}
