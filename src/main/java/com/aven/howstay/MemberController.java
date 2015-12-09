package com.aven.howstay;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aven.dao.Dao;
import com.aven.model.HouseBean;
import com.aven.model.HouseReviewBean;
import com.aven.model.MemberBean;
import com.aven.model.WishBean;

@Component
@Controller
public class MemberController {
	@Resource(name = "loginDao")
	private Dao logindao;
	@Resource(name = "MyPageDao")
	private Dao MyPageDao;
	@Resource(name="houseDao")
	private Dao houseDao;
	/**
	 * @author minseok ȸ��ó��, ��ȣ��, ���̵� ����ó��
	 * @param m_id
	 *            �α��� id
	 * @param m_password
	 *            �α��� password
	 * @param session
	 *            �α����� ���̵�� �н����带 ����ó��
	 * @return �α��μ����� main, ���н� login
	 * @throws IOException 
	 */
	@RequestMapping("/jsp/login_join/Memberlogin.do")
	public void login(String m_id, String m_password, HttpSession session,HttpServletResponse response) throws IOException {
		MemberBean bean;
		bean = (MemberBean) MyPageDao.selectList(m_id);
		/* String pass = (String) logindao.selectList(m_id); */
		String pass = bean.getM_password();
		if (m_password.equals(pass)) {
			session.setAttribute("m_id", m_id);
			session.setAttribute("m_no", bean.getM_no());
			response.getWriter().print("success");
		} else {
			response.getWriter().print("fail");
		}
		
	}

	/**
	 * @author minseok ȸ�� �α׾ƿ� ��ư �����ÿ� ��� ���� ����
	 * @param session
	 *            �α��� �Ǿ��� �ִ� id
	 * @return m_id�� �����ͼ� ��� ������ ����
	 */
	@RequestMapping("/jsp/login_join/MemberLogOut.do")
	public ModelAndView memberLogOut(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		String m_id = (String) session.getAttribute("m_id");
		session.removeAttribute(m_id);
		session.invalidate();
		mv.setViewName("redirect:/jsp/main.jsp");
		return mv;
	}

	/**
	 * @author minseok ȸ�����Խ� ���� bean���� �޾Ƽ� db�� �Է�
	 * @param bean
	 *            form����
	 * @return
	 */
	@RequestMapping("/jsp/login_join/MemberJoin.do")
	public String memberJoin(MemberBean bean) {
		ModelAndView mv = new ModelAndView();
		logindao.insertItem(bean);
		return "redirect:/jsp/main.jsp";
	}

	/**
	 * @author minseok ���ڵ带 list�� �޾Ƽ� �ѷ���
	 * @param dong
	 *            ����ڰ� ���� �Է�
	 * @return list�� ���� �޾Ƽ� list�� ���(�ּ�)
	 */
	@RequestMapping("/jsp/login_join/MemberOldZipcode.do")
	public ModelAndView memberOldZipcode(@RequestParam(value = "dong") String dong) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", logindao.selectList(dong));
		System.out.println(logindao.selectList(dong));
		mv.setViewName("/jsp/login_join/address");
		return mv;
	}

	/**
	 * @author minseok
	 * ���̵� ���� �޾ƿͼ� �ߺ��˻縦 ����
	 * @return �ߺ��̸� true ������ false
	 */
	@RequestMapping("/jsp/login_join/MemberIdCheck.do")
	public ModelAndView memberIdCheck(@RequestParam(value = "m_id") String m_id, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		MemberBean bean;
		boolean flag = false;
		bean = (MemberBean) MyPageDao.selectList(m_id);
		String dbId;
		if (bean != null) {
			dbId = bean.getM_id();
			if (dbId != null && dbId.equals(m_id)) {
				flag = true;
			}
		} else {
			flag = false;
		}
		mv.addObject("flag", flag);
		mv.addObject("m_id", m_id);
		mv.setViewName("/jsp/login_join/idCheck.jsp");
		return mv;
	}
	
	/**
	 * @author minseok
	 * �̸��ϰ��� �޾ƿ� ����ִ� �̸��ϰ� ��, ������ ���̵��� ���
	 * @param m_email ����ڰ� ã�����ϴ� ���̵��� �̸���
	 * @return ����ڰ� ã�����ϴ� id
	 */
	@RequestMapping("/jsp/login_join/MemberFindId.do")
	public ModelAndView memberFindId(@RequestParam(value="m_email")String m_email){
		ModelAndView mv = new ModelAndView();
		MemberBean bean;
		bean=(MemberBean) logindao.selectListA(m_email);
		if(bean!=null){
			mv.addObject("m_id",bean.getM_id());
			mv.addObject("m_email",m_email);
			mv.setViewName("/jsp/login_join/findId");
		}else{
			mv.setViewName("redirect:/jsp/login_join/find.jsp");
		}
		return mv;
		
	}
	
	/**
	 * @author minseok
	 * ȸ���� ���̵𰪰� ����, ��Ʈ���� �޾� ȸ���� ��й�ȣ�� ��ȯ
	 * @param m_id ã�����ϴ� id
	 * @return ȸ���� ��й�ȣ 
	 */
	@RequestMapping("/jsp/login_join/MemberFindPass.do")
	public ModelAndView memberFindPass(String m_id){
		ModelAndView mv = new ModelAndView();
		MemberBean bean;
		bean=(MemberBean) MyPageDao.selectList(m_id);
		if(bean!=null){
			String dbpass=bean.getM_password();
			mv.addObject("m_password",dbpass);
			mv.addObject("m_id",m_id);
			mv.setViewName("/jsp/login_join/findPass");
		}else{
			mv.setViewName("redirect:/jsp/login_join/find.jsp");
		}
		return mv;
	}
	
	/**
	 * @author minseok
	 * ���ø���Ʈ ������ �ؽ��ʱ����� �̿��Ͽ� �������� �ҽ� �� ���� ������ �ѷ�����
	 * @param m_id ����ó���Ǿ��� id
	 * @return id�� ���� �˻��� ���ø���Ʈ �Ͽ콺 ����	 
	 **/
	@RequestMapping("/jsp/mypage/selectWishList.do")
	public ModelAndView selectWishList(String m_id){
		ModelAndView mv = new  ModelAndView();
		List<HouseBean>list = new ArrayList<HouseBean>();
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		HouseBean housebean;
		MemberBean bean;
		bean=(MemberBean)MyPageDao.selectList(m_id);
		map.put("flag", 2);
		String []array;
		String wishlist=bean.getM_wishList();
		array=wishlist.split("@");
		int temp;
		for (int i = 1; i < array.length; i++) {
			temp=Integer.parseInt(array[i]);
			map.put("h_no", temp);
			housebean=(HouseBean) houseDao.selectList(map);
			list.add(housebean);
			mv.addObject("list",list);
		}
		
		mv.setViewName("/jsp/mypage/myWishList");
		return mv;
	}
	
	/**
	 * @author minseok
	 * @param h_no �߰��ϰ����ϴ� �Ͽ콺��ȣ
	 * @param m_id ȸ���� ���̵�
	 * @param session �� ������, ����,����¥ ���ǰ� �޾ƿ���
	 * @return ��������� ���ø���Ʈ�� �߰��ϰ��� �ϴ� �Ͽ콺��ȣ�� m_wishlist�� �߰�
	 */
	@RequestMapping("/jsp/house/wishList.do")
	public ModelAndView wishList(String h_no,String m_id,HttpSession session){
		ModelAndView mv = new  ModelAndView();
		System.out.println("������ �Ӽ�");
		System.out.println("ȸ�����̵� : "+m_id+" �Ͽ콺��ȣ : "+h_no);
		int page=(Integer)session.getAttribute("page");
		String st=(String)session.getAttribute("st");
		String en=(String)session.getAttribute("en");
		
		MemberBean bean;
		bean=(MemberBean)MyPageDao.selectList(m_id);
		
		WishBean wbean=new WishBean();
		String []array;
		boolean flag=false;
		String wishList=bean.getM_wishList();//0@1@2@4
		array= wishList.split("@");
		System.out.println("Ȩ��ȣ"+h_no);
		
		for (int i = 0; i < array.length;i++) {
			if(array[i].equals(h_no)){
				System.out.println("����");
				System.out.println(array[i]);
				flag=true;
				session.setAttribute("flag", flag);
				System.out.println(flag);
				mv.addObject("h_no",h_no);
				mv.setViewName("redirect:houseInfo.do?page="+page+"&st="+st+"&en="+en);
				return mv;
				//return SUCCESS;
			}
		}
		System.out.println("���� �߰��Ҳ�");
		wishList=wishList+"@"+h_no;
		System.out.println(wishList);
		flag=false;
		wbean.setH_no(wishList);
		wbean.setM_id(m_id);
		System.out.println(wbean);
		logindao.updateItem(wbean);
		session.setAttribute("flag", flag);
		System.out.println(flag);
		//return SUCCESS;
		mv.addObject("h_no",h_no);
		mv.setViewName("redirect:houseInfo.do?page="+page+"&st="+st+"&en="+en);
		return mv;
	}

	
	@RequestMapping("/jsp/mypage/deleteWish.do")
	public ModelAndView deleteWish(String m_id,String h_no){
		ModelAndView mv = new ModelAndView();
		
		WishBean wbean=new WishBean();
		MemberBean bean;
		bean=(MemberBean)MyPageDao.selectList(m_id);
		
		String wishlist=bean.getM_wishList();
		String deletewish="@"+h_no;
		String upWishList;
		upWishList=wishlist.replaceAll(deletewish, "");
		System.out.println(upWishList);
		wbean.setH_no(upWishList);
		wbean.setM_id(m_id);
		logindao.updateItemA(wbean);
		
		mv.setViewName("redirect:selectWishList.do?m_id="+m_id);
		//return SUCCESS;
		
		return mv;
	}
	// --------------------------------------------------- ��������������
	 /**
	 * ����������
	 * @author jeonghun	             
	 * @return mypage.jsp
	 */
	@RequestMapping("/jsp/mypage/MemberMypage.do")
	public ModelAndView myPage(HttpSession session) {
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("/jsp/mypage/mypage");
		String m_id = (String) session.getAttribute("m_id");// ���ǿ��� ���̵��� �����ͼ�
		mv.addObject("bean", MyPageDao.selectList(m_id));// ȸ�������� �����ͼ�
													// MemberBean�� ��Ƽ�bean���� �Ѹ�		
		return mv;
	}
	
	/**
	 * ����������->ȸ����������
	 * @author jeonghun
	 * @param  session(m_id)
	 * @param  m_password         
	 * @return mymodify.jsp
	 */	
	@RequestMapping("/jsp/mypage/MemberMyModify.do")
	public ModelAndView myModify(HttpSession session, String m_password) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/mypage/mymodify");
		String m_id = (String) session.getAttribute("m_id");
		MemberBean bean = (MemberBean) MyPageDao.selectList(m_id);
		String pass = bean.getM_password();
		mv.addObject("bean", bean);
		if (m_password.equals(pass)) {
			mv.setViewName("/jsp/mypage/mymodify");
		} else {
			mv.setViewName("/jsp/mypage/checkpass");
		}
		return mv;
	}
	
	
	/**
	 * ����������->ȸ����������->�������� DB���ε�
	 * @author jeonghun
	 * @param Memberbean
	 * @return mypage.jsp
	 */	
	@RequestMapping("/jsp/mypage/MemberMyModifyUpdate.do")
	public ModelAndView myModifyUpdate(MemberBean bean) {
		ModelAndView mv = new ModelAndView();
		System.out.println(bean);
		MyPageDao.updateItem(bean);
		mv.setViewName("redirect:/jsp/mypage/mypage.jsp");
		return mv;
	}
	
	
	/**
	 * ����������->���� ���೻��
	 * @author jeonghun
	 * @param session
	 * @return myreservation.jsp
	 */
	@RequestMapping("/jsp/mypage/myReservation.do")
	public ModelAndView myReservation(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		int m_no=(Integer) session.getAttribute("m_no");
		HashMap<String, Integer> map = new HashMap<String,Integer>();
		map.put("flag", 0);
		map.put("m_no", m_no);
		mv.addObject("list",MyPageDao.selectListA(map));
		mv.setViewName("/jsp/mypage/myreservation");
		return mv;
	}
	
	
	/**
	 * ����������->���� ���೻��->���亸��
	 * @author jeonghun
	 * @param session
	 * @param hrr_no
	 * @return myreview.jsp (HTML LOAD)
	 * Ajax ����
	 */
	@RequestMapping("/jsp/mypage/myReview.do")
	public ModelAndView myReview(HttpSession session,int hrr_no) {
		ModelAndView mv = new ModelAndView();
		int m_no=(Integer) session.getAttribute("m_no");		
		HashMap<String, Integer> map = new HashMap<String,Integer>();
		map.put("flag", 1);
		map.put("hrr_no", hrr_no);
		map.put("m_no", m_no);
		mv.addObject("list",MyPageDao.selectListA(map));
		mv.setViewName("/jsp/mypage/myreview");
		return mv;
	}
	
	
	/**
	 * ����������->���� ���೻��->���亸��->���侲��
	 * @author jeonghun
	 * @param hrr_no
	 * @return myreviewwrite.jsp (HTML LOAD)
	 * Ajax ����
	 */
	@RequestMapping("/jsp/mypage/myReviewwrite.do")
	public ModelAndView myReviewWrite(int hrr_no) {
		ModelAndView mv = new ModelAndView();				
		HashMap<String, Integer> map = new HashMap<String,Integer>();
		map.put("flag", 2);
		map.put("hrr_no", hrr_no);		
		int h_no=(Integer) MyPageDao.selectListA(map);
		mv.addObject("h_no", h_no);
		mv.setViewName("/jsp/mypage/myreviewwrite");
		return mv;
	}
	
	
	/**
	 * ����������->���� ���೻��->���� ����
	 * @author jeonghun
	 * @param no
	 * @return reservejson.jsp (JSON LOAD)
	 * Ajax ����
	 */
	@RequestMapping("/jsp/mypage/reserve.do")
	public ModelAndView reserve(int no) {
		ModelAndView mv = new ModelAndView();				
		HashMap<String, Integer> map = new HashMap<String,Integer>();
		map.put("flag", 3);
		map.put("hrr_no", no);		
		mv.addObject("list", MyPageDao.selectListA(map));
		mv.setViewName("/json/reservejson");
		return mv;
	}
	
	
	/**
	 * ����������->���� ���೻��->���亸��->���侲��->����DB���ε�
	 * @author jeonghun
	 * @param bean
	 * @return null
	 * Ajax ����
	 */
	@RequestMapping("/jsp/mypage/MemberReviewInsert.do")
	public ModelAndView reviewInsert(HouseReviewBean bean) {
		ModelAndView mv = new ModelAndView();		
		MyPageDao.insertItem(bean);		
		MyPageDao.updateItemA(bean.getH_no());
		mv.setViewName("/jsp/mypage/myreservation");
		return mv;
	}
	
}
