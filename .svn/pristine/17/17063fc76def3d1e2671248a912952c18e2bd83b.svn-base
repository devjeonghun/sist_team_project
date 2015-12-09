package com.aven.dao;

import java.util.HashMap;
import java.util.List;

import com.aven.model.BoardQaBean;

/*@Component*/
public class BoardDao extends DaoAdapter {
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author KwangSeok
	 * qa.jsp 누르면 리스트 뿌려줌 
	 */
	@Override
	public List<Object> selectList() {
		// TODO Auto-generated method stub
		
		
		return this.getSqlSession().selectList("com.aven.dao.Board.qaList");
	}

	
	/**
	 * @author KwangSeok
	 * 기능
	 * qa 글쓰기시 m_no를 가져오는 가져오는 역할
	 */
	@Override
	public Object selectList(Object id) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.Board.selectMNO",id);
	}
	
	/**
	 * @author KwangSeok
	 * 
	 * qa 상세정보가져올때 HIT수 증가
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
	 * qa 상세정보 수정
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
	 * 기능
	 * Q&A상세 페이지
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
	 * 기능
	 * qa 글쓰기 입력기능
	 */
	@Override
	public void insertItem(Object bean) {
		// TODO Auto-generated method stub
		this.getSqlSession().insert("com.aven.dao.Board.boardQaInsert",bean);

	}
	
	/**
	 * @author KwangSeok
	 * 
	 * qa 상세정보 삭제
	 */
	@Override
	public void deleteItem(Object cq_no) {
		// TODO Auto-generated method stub
		this.getSqlSession().delete("com.aven.dao.Board.boardQaDelete",cq_no);
	}



}
