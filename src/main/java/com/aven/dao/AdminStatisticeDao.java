package com.aven.dao;

import java.util.HashMap;

/*@Component*/
public class AdminStatisticeDao extends DaoAdapter {
   // TODO �ʿ��� �͸� �������̵� �Ͽ� ���
   
   /**
    * @author ByeongYong
    * ���
    * - ������ ���޴� �̱�
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