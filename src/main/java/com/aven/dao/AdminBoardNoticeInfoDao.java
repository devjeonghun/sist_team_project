package com.aven.dao;


public class AdminBoardNoticeInfoDao extends DaoAdapter{
	// TODO 필요한 것만 오버라이드 하여 사용
	
	/**
	 * @author 작성자 입력 요망
	 * 기능
	 * - 관리자 공지사항 글 상세 select
	 */
	@Override
	public Object selectList(Object no) {
		// TODO Auto-generated method stub
		return this.getSqlSession().selectOne("com.aven.dao.AdminBoard.selectNoticeInfo",no);
	}

}
