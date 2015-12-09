package com.aven.dao;

import java.util.HashMap;

import org.springframework.stereotype.Component;
@Component
public class HouseInfoDao extends DaoAdapter{
	// TODO 필요한 것만 오버라이드 하여 사용
	

	/**
	 * @author EunJi
	 * 기능
	 * - 하우스 정보 출력/ 리뷰 리스트 출력/ 리뷰 리스트 정보 출력
	 */
	@Override
	public Object selectList(Object object) { //house info
		// TODO Auto-generated method stub
		HashMap<Object, Object> map=(HashMap<Object, Object>)object;
		
		if(map.get("flag").equals(0)){
			return this.getSqlSession().selectOne("com.aven.dao.HouseInfo.selectHouseInfo", map.get("h_no"));
		}else if(map.get("flag").equals(1)){
			return this.getSqlSession().selectList("com.aven.dao.HouseInfo.reviewList",map.get("h_no"));
		}else if(map.get("flag").equals(2)){
			return this.getSqlSession().selectOne("com.aven.dao.HouseInfo.reviewListInfo",map.get("hr_no"));
		}
		return null;
	}

	/**
	 * @author EunJi
	 * 기능
	 * - 해당 house의 room 갯수 count / r_no 비교하기 위해 r_no 출력 / 
	 * 예약 날짜에 해당하는 예약 가능한 room만 예약버튼 활성화 시키기 위해 rflag 출력.
	 */
	@Override
	public Object selectListA(Object object) {
		// TODO Auto-generated method stub
		HashMap<Object, Object> map= (HashMap<Object, Object>)object; // 오브젝트로 넘어온 값을 받음
		//System.out.println("flag="+map.get("flag"));// 콘솔창으로 flag확인
		
		if(map.get("flag").equals(0)) {
			return this.getSqlSession().selectList("com.aven.dao.HouseInfo.roomCount", map.get("h_no"));
		
		}else if(map.get("flag").equals(1)){
			return this.getSqlSession().selectOne("com.aven.dao.HouseInfo.selectRnum", map);
			
		}else if(map.get("flag").equals(2)) {
			int RCh = (Integer)this.getSqlSession().selectOne("com.aven.dao.HouseInfo.rnumCheck", map);
			
			if (RCh!=0) {
				return "true";
			} else {
				return "false";
			}
		}
		
			
			//return this.getSqlSession().selectList("com.aven.dao.House.searchHouse", map.get("bean"));
		 
		return null;
		
	}

	/**
	 * @author EunJi
	 * 기능
	 * - house review 게시판 hit수 update/ house review 게시판 좋아요 수 update 
	 */
	@Override
	public void updateItem(Object object) {
		// TODO Auto-generated method stub
		HashMap<Object, Object> map= (HashMap<Object, Object>)object; // 오브젝트로 넘어온 값을 받음
		//System.out.println("flag="+map.get("flag"));// 콘솔창으로 flag확인
		
		if(map.get("updateflag").equals(0)) {
			this.getSqlSession().update("com.aven.dao.HouseInfo.updateRHit", map.get("hr_no"));
		}else if(map.get("updateflag").equals(1)) {
			this.getSqlSession().update("com.aven.dao.HouseInfo.updateRLike", map.get("hr_no"));
		}
	}
	
}
