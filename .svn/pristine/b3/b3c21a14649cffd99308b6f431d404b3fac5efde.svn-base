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
	 * @author minseok 회원처리, 번호와, 아이디 세션처리
	 * @param m_id
	 *            로그인 id
	 * @param m_password
	 *            로그인 password
	 * @param session
	 *            로그인한 아이디와 패스워드를 세션처리
	 * @return 로그인성공시 main, 실패시 login
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
	 * @author minseok 회원 로그아웃 버튼 누를시에 모든 세션 삭제
	 * @param session
	 *            로그인 되어져 있는 id
	 * @return m_id를 가져와서 모든 세션을 삭제
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
	 * @author minseok 회원가입시 폼을 bean으로 받아서 db에 입력
	 * @param bean
	 *            form정보
	 * @return
	 */
	@RequestMapping("/jsp/login_join/MemberJoin.do")
	public String memberJoin(MemberBean bean) {
		ModelAndView mv = new ModelAndView();
		logindao.insertItem(bean);
		return "redirect:/jsp/main.jsp";
	}

	/**
	 * @author minseok 집코드를 list로 받아서 뿌려줌
	 * @param dong
	 *            사용자가 동을 입력
	 * @return list에 빈을 받아서 list를 출력(주소)
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
	 * 아이디 값을 받아와서 중복검사를 시행
	 * @return 중복이면 true 없으면 false
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
	 * 이메일값을 받아와 디비에있는 이메일과 비교, 있으면 아이디값을 출력
	 * @param m_email 사용자가 찾고자하는 아이디의 이메일
	 * @return 사용자가 찾고자하는 id
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
	 * 회원의 아이디값과 질문, 힌트값을 받아 회원의 비밀번호를 반환
	 * @param m_id 찾고자하는 id
	 * @return 회원의 비밀번호 
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
	 * 위시리스트 누르면 해쉬맵구조를 이용하여 은지누나 소스 를 통한 룸정보 뿌려오기
	 * @param m_id 세션처리되어진 id
	 * @return id를 통해 검색된 위시리스트 하우스 정보	 
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
	 * @param h_no 추가하고자하는 하우스번호
	 * @param m_id 회원의 아이디
	 * @param session 각 페이지, 시작,끝날짜 세션값 받아오기
	 * @return 결과적으로 위시리스트에 추가하고자 하는 하우스번호를 m_wishlist에 추가
	 */
	@RequestMapping("/jsp/house/wishList.do")
	public ModelAndView wishList(String h_no,String m_id,HttpSession session){
		ModelAndView mv = new  ModelAndView();
		System.out.println("나여기 왓소");
		System.out.println("회원아이디 : "+m_id+" 하우스번호 : "+h_no);
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
		System.out.println("홈번호"+h_no);
		
		for (int i = 0; i < array.length;i++) {
			if(array[i].equals(h_no)){
				System.out.println("있음");
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
		System.out.println("없음 추가할껴");
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
	// --------------------------------------------------- 마이페이지시작
	 /**
	 * 마이페이지
	 * @author jeonghun	             
	 * @return mypage.jsp
	 */
	@RequestMapping("/jsp/mypage/MemberMypage.do")
	public ModelAndView myPage(HttpSession session) {
		ModelAndView mv = new ModelAndView();		
		mv.setViewName("/jsp/mypage/mypage");
		String m_id = (String) session.getAttribute("m_id");// 세션에서 아이디값을 가져와서
		mv.addObject("bean", MyPageDao.selectList(m_id));// 회원정보를 가져와서
													// MemberBean에 담아서bean으로 뿌림		
		return mv;
	}
	
	/**
	 * 마이페이지->회원정보수정
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
	 * 마이페이지->회원정보수정->수정내역 DB업로드
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
	 * 마이페이지->나의 예약내역
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
	 * 마이페이지->나의 예약내역->리뷰보기
	 * @author jeonghun
	 * @param session
	 * @param hrr_no
	 * @return myreview.jsp (HTML LOAD)
	 * Ajax 동작
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
	 * 마이페이지->나의 예약내역->리뷰보기->리뷰쓰기
	 * @author jeonghun
	 * @param hrr_no
	 * @return myreviewwrite.jsp (HTML LOAD)
	 * Ajax 동작
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
	 * 마이페이지->나의 예약내역->결제 내역
	 * @author jeonghun
	 * @param no
	 * @return reservejson.jsp (JSON LOAD)
	 * Ajax 동작
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
	 * 마이페이지->나의 예약내역->리뷰보기->리뷰쓰기->쓰기DB업로드
	 * @author jeonghun
	 * @param bean
	 * @return null
	 * Ajax 동작
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
