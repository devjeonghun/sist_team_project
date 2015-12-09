package com.aven.dao;

import java.util.HashMap;

/*@Component*/
public class AdminStatisticeDao extends DaoAdapter {
   // TODO 필요한 것만 오버라이드 하여 사용
   
   /**
    * @author ByeongYong
    * 기능
    * - 관리자 통계메뉴 뽑기
    */
   @Override
   public Object selectList(Object Object) {
      // TODO Auto-generated method stub
      HashMap<Object, Object> map = (HashMap<Object, Object>)Object;
      if(map.get("temp").equals("monthlyReserve")){
         return this.getSqlSession().selectList("com.aven.dao.Admin.selectMonthlyReserve", map.get("state"));
      }else if(map.get("temp").equals("monthlyTotalSale")){
         return this.getSqlSession().selectList("com.aven.dao.Admin.selectMonthlyTotalSale", map.get("state"));
      }else if(map.get("temp").equals("monthlyCircle")){
    	  return this.getSqlSession().selectList("com.aven.dao.Admin.selectMonthlyCircle");
      }
      return null;
   }
}