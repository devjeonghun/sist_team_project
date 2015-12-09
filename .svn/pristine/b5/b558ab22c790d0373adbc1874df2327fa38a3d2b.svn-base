package com.aven.dao;

import java.util.HashMap;
import java.util.List;


public class HouseDao extends DaoAdapter {
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author InWook
	 * 기능
	 * - houseMain.jsp 에서 리스트를 뿌려주기 위함
	 */
	@Override
	public List<Object> selectList() {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectList("com.aven.dao.House.hmListImg");
	}
	
	/**
	 * @author InWook
	 * 기능
	 * - houseMain.jsp 에서 리스트를 뿌려주기 위함
	 * - houseSearch.jsp에서 검색된 결과를 뿌려주기 위함
	 */
	@Override
	public Object selectList(Object object) {
		// TODO Auto-generated method stub
		HashMap<Object, Object> map= (HashMap<Object, Object>)object; // 오브젝트로 넘어온 값을 받음
		System.out.println("falg="+map.get("flag"));// 콘솔창으로 flag확인
		
		if(map.get("flag").equals(0)) {
			return this.getSqlSession().selectList("com.aven.dao.House.rListImg");
		} else if(map.get("flag").equals(1)) {// flag가 1일 경우 다음과 같이 bean을 파라미터로 넘겨줌
			return this.getSqlSession().selectList("com.aven.dao.House.searchHouse", map.get("bean"));
		} else if(map.get("flag").equals(2)) {
			return this.getSqlSession().selectOne("com.aven.dao.House.getHouse", map.get("h_no"));
		}
		return null;
	}

}
