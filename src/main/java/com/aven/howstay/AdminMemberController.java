package com.aven.howstay;

import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aven.dao.Dao;
import com.aven.model.AdminBean;
import com.aven.model.MemberBean;
@Component
@Controller
public class AdminMemberController {
	@Resource(name="adminMemberDao")
	Dao adminMemberDao;
	
	
	@RequestMapping("/jsp/admin/adminLogin.do")
	public ModelAndView idCheck(AdminBean bean,HttpSession session){
		ModelAndView mv = new ModelAndView();
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("flag", 0);
		map.put("a_id", bean.getA_id());
		AdminBean dbBean=(AdminBean)adminMemberDao.selectList(map);
		
		if(dbBean!=null){
			if(dbBean.getA_password().equals(bean.getA_password())){
				session.setAttribute("a_id", bean.getA_id());
				mv.addObject("list",adminMemberDao.selectList());
				mv.setViewName("/jsp/admin/member/memberList");
				return mv;
			}else{
				mv.setViewName("/jsp/admin/adminLogin");
			}
		}
		return mv;
	}
	@RequestMapping("/jsp/admin/adminMemberList.do")
	public ModelAndView memberList(){
		ModelAndView mv = new ModelAndView();
		mv.addObject("list",adminMemberDao.selectList());
		mv.setViewName("/jsp/admin/member/memberList");
		return mv;
	}
	
	@RequestMapping("/jsp/admin/adminDeleteMember.do")
	public String deleteMember(String m_id,int m_no){
		
		MemberBean bean=new MemberBean();
		bean.setM_id("del#"+m_id);
		bean.setM_no(m_no);
		
		adminMemberDao.updateItem(bean);
		return "redirect:adminMemberList.do";
	}
	
	@RequestMapping("/jsp/admin/adminMemberInfo.do")
	public ModelAndView memberInfo(@RequestParam(value="m_no")int m_no){
		ModelAndView mv = new ModelAndView();
		MemberBean bean;
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("flag", 1);
		map.put("m_no", m_no);
		bean=(MemberBean)adminMemberDao.selectList(map);
		mv.addObject("bean", bean);
		mv.setViewName("/jsp/admin/member/memberInfo");
		
		return mv;
	}
	
	@RequestMapping("/jsp/admin/adminMemberUpdate.do")
	public String memberInsert(MemberBean bean){
		
		MemberBean mbean=new MemberBean();
		mbean.setM_id(bean.getM_id());
		mbean.setM_password(bean.getM_password());
		mbean.setM_name(bean.getM_name());
		mbean.setM_birth(bean.getM_birth());
		mbean.setM_address(bean.getM_address());
		mbean.setM_email(bean.getM_email());
		mbean.setM_tel(bean.getM_tel());
		mbean.setM_mobile(bean.getM_mobile());
		mbean.setM_pass_q(bean.getM_pass_q());
		mbean.setM_pass_a(bean.getM_pass_a());
		System.out.println(bean);
		adminMemberDao.updateItemA(mbean);
		
		return "redirect:adminMemberList.do";
	}
	
	@RequestMapping("/jsp/admin/adminStepList.do")
	public ModelAndView stepList(){
		ModelAndView mv = new ModelAndView();
		HashMap<String, Object>map=new HashMap<String, Object>();
		map.put("flag", 2);
		
		mv.addObject("list", adminMemberDao.selectList(map));
		mv.setViewName("/jsp/admin/member/adminList");
		return mv;
	}
	
}
