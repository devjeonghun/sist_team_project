package com.aven.dao;


public class AdminBoardNoticeInfoDao extends DaoAdapter{
	// TODO �ʿ��� �͸� �������̵� �Ͽ� ���
	
	/**
	 * @author �ۼ��� �Է� ���
	 * ���
	 * - ������ �������� �� �� select
	 */
	@Override
	public Object selectList(Object no) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.AdminBoard.selectNoticeInfo",no);
	}

}
