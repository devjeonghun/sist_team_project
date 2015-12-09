package com.aven.dao;

import java.util.HashMap;


public class MemberDao extends DaoAdapter{
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author InWook
	 * 기능
	 * - 예약 후 회원정보에서 보유 포인트를 받아옴
	 */
	@Override
	public Object selectList(Object object) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.Member.checkPoint", object);
	}


	/**
	 * @author InWook
	 * 기능
	 * - flag 1: 예약시 포은트 증가
	 * - flag 2: 포인트 체크하여, 등급에 필요한 포인트가 되면 회원등급 변경
	 */
	@Override
	public void updateItem(Object object) {
		// TODO Auto-generated method stub
		HashMap<String, Object>map = (HashMap<String, Object>)object;
		if(map.get("flag").equals(1)) {
			this.getSqlSession().update("com.aven.dao.Member.addPoint", object);
		}else if(map.get("flag").equals(2)) {
			this.getSqlSession().update("com.aven.dao.Member.upGrade", map.get("pointGrade"));
		}
	}

}
