package com.aven.howstay;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * House 컨트롤러
 * 컨트롤러는 기존 Struts.xml과 Action 파일의 역할을 동시에 합니다.
 * @RequestMapping(경로/사용자정의이름.do)을 이용하여 해당 *.do를 컨트롤러와 매핑합니다.
 * 
 * Dao를 사용하실 때는
 * 인터페이스인 Dao를 인스턴스변수로 선언하고 
 * 해당 선언라인 위에 @Resource(name="servlet-context에서 설정한 id")을 이용하여
 * 사용하려는 다오를 설정해 줍니다.
 * 
 */

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.aven.dao.Dao;
import com.aven.model.HouseReservationBean;
import com.aven.model.HouseSearchBean;
import com.aven.model.RoomBean;

@Component
@Controller
public class HouseController {
	@Resource(name="houseDao")
	Dao houseDao;
	
	@Resource(name="houseInfoDao")
	Dao houseInfoDao;
	
	@Resource(name="houseReserveDao")
	Dao houseReserveDao;
	
	@Resource(name="housePaymentDao")
	Dao housePaymentDao;
	
	@Resource(name="memberDao")
	Dao memberDao;
	
	/**
	 * @author INWOOK
	 * houseMain페이지이동과 필요한 리스트를 가져오는 메소드
	 * @return 하우스 리스트에 뿌려줄 값들 list, rlist
	 */
	@RequestMapping("/jsp/house/hmList.do")
	public ModelAndView menuHouse() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/house/houseMain");	// 이동 페이지 set
		mv.addObject("list", houseDao.selectList());	// 필요한 리스트 key와 value로 add
		//같은 다오 사용을 구분하기 위한 해쉬맵
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("flag", 0); // flag그 key로 구분
		mv.addObject("rlist", houseDao.selectList(map));
		
		return mv;
	}
	
	/**
	 * @author INWOOK
	 * 하우스 서치에 필요한 값들을 받아와 검색해주는 메소드
	 * 
	 * @param st 체크인
	 * @param en 체크아웃
	 * @param r_count 인원수
	 * @param keyword 검색어
	 * @return 파라미터 값들을 가지고 검색한 결과를 value로한 key값 list
	 */
	@RequestMapping("/jsp/house/houseSearch.do")
	public ModelAndView HouseSearchAction(String st, String en,String r_count,String keyword,String ajax) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/house/houseSearch");
		if(ajax.equals("ajax")){
			mv.setViewName("/json/houstjson");
		}
		HouseSearchBean bean = new HouseSearchBean();		
		bean.setR_count(r_count);
		if(keyword!=null || keyword != ""){
			bean.setKeyword(keyword);	
		}		
		bean.setHrr_start(st);
		bean.setHrr_end(en);
		System.out.println(bean);
		// 같은 다오 사용을 위한 해쉬맵
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("flag", 1);	// 구분자를key로 flag를 줌
		map.put("bean", bean); // 검색하는데 필요한 값들을 bean에 담아서 해쉬맵에 넣어줌
		
		mv.addObject("list", houseDao.selectList(map));//searchHouse
		mv.addObject("r_count", r_count);
		mv.addObject("keyword", keyword);
		mv.addObject("st", st);
		mv.addObject("en", en);
		return mv;
	}
	
	/**
	 * @author EunJi
	 * 하우스 info 뽑아오고 Room list 출력.
	 * room list출력시 rflag를 주어 예약버튼 활성화 유무를 결정.
	 * + INWOOK - st, en부분 required=false로 값이 없어도 메소드 수행하도록 수정
	 * @param h_no 하우스 no
	 * @param page 페이지default
	 * @param st 체크인
	 * @param en 체크아웃
	 * @return
	 */
	@RequestMapping("/jsp/house/houseInfo.do")
	public ModelAndView HouseInfoAction(@RequestParam(value="h_no")int h_no,
			@RequestParam(value="page")int page,
			@RequestParam(value="st",required=false)String st,
			@RequestParam(value="en",required=false)String en, HttpSession session){
		
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/house/houseInfo");
		
		HashMap<Object, Object>hmap= new HashMap<Object, Object>();
		hmap.put("h_no", h_no);
		hmap.put("flag", 0);
		mv.addObject("hBean",houseInfoDao.selectList(hmap));
		
		HashMap<Object, Object>rmap= new HashMap<Object, Object>();
		rmap.put("flag", 0);
		rmap.put("h_no", h_no);
		List<RoomBean>room;
		room=(List<RoomBean>)houseInfoDao.selectListA(rmap);
		
		//System.out.println(list);
		// session
		if(st!=null && en!=null) {
			session.setAttribute("h_no", h_no);
			session.setAttribute("st", st);
			session.setAttribute("en", en);
			session.setAttribute("page", page);
			rmap.put("st", st);
			rmap.put("en", en);
		} else {
			//더미 날짜, 하우스메인에서 날짜없이 접근할때사용.
			rmap.put("st", "2000-01-01");
			rmap.put("en", "2000-01-02");
		}
		
		
		RoomBean roomInfo;
		
		for(int i=0;i<room.size();i++){
			rmap.put("order", i+1);
			rmap.put("flag", 1);
			
			roomInfo=(RoomBean)houseInfoDao.selectListA(rmap);
			//
			rmap.put("flag", 2);
			if((houseInfoDao.selectListA(rmap)).equals("true")){
				roomInfo.setRflag(1);
			}else{
				roomInfo.setRflag(0);
			}
			room.set(i, roomInfo);
			//
			
			//System.out.println(i+"  홀레"+roomInfo);
		}
		
		mv.addObject("room", room);
		mv.addObject("st",st);
		mv.addObject("en",en);		
		return mv;
	}
	
	/**
	 * @author Eunji
	 * 리뷰 ajax로 불러오기 & json처리.
	 * @param h_no - house no
	 * @param hflag - hitflag. 같은페이지 이동시 hit주지 않기 위해서 만들었습니다.
	 * @return
	 */
	
	@RequestMapping("/jsp/house/houseInfoReview.do")
	public ModelAndView houseInfoReviewDo(@RequestParam(value="h_no")int h_no, @RequestParam(value="hflag")int hflag){
		ModelAndView mv = new ModelAndView();
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("h_no", h_no);
		map.put("flag", 1);
		
		/*mv.setViewName("/jsp/house/houseInfoReview");*/
		mv.setViewName("/json/reviewListjson");
		mv.addObject("ReviewL",houseInfoDao.selectList(map));
		
		return mv;
	}
	
	/**
	 * @author Eunji
	 * review상세정보 ajax로 html
	 * @param hr_no 
	 * @param hflag
	 * @return
	 */
	@RequestMapping("/jsp/house/houseInfoReviewInfo.do")
	public ModelAndView houseInfoReviewInfoDo(@RequestParam(value="hr_no")int hr_no, @RequestParam(value="hflag")int hflag){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/house/houseInfoReviewInfo");
		return mv;
	}
	/**
	 * @author Eunji
	 * reviewinfo - 상세정보 / update hit
	 * @param hr_no
	 * @param hflag
	 * @return
	 */
	@RequestMapping("/jsp/house/houseInfoReviewInfoH.do")
	public ModelAndView houseInfoReviewInfoHDo(@RequestParam(value="hr_no")int hr_no, @RequestParam(value="hflag")int hflag){
		ModelAndView mv = new ModelAndView();
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("hr_no", hr_no);
		map.put("flag", 2);
		map.put("updateflag", 0);
		if(hflag==1){
			//update Hit
			houseInfoDao.updateItem(map);
		}
		
		mv.setViewName("/json/reviewListInfojson");
		mv.addObject("reviewInfo",houseInfoDao.selectList(map));
		
		return mv;
	}
	
	/**
	 * @author EUNJI
	 * 
	 * @param hr_no
	 * @param hflag
	 * @return
	 */
	@RequestMapping("/jsp/house/houseInfoReviewLike.do")
	public ModelAndView houseInfoRLikeDo(@RequestParam(value="hr_no")int hr_no, @RequestParam(value="hflag")int hflag){
		ModelAndView mv = new ModelAndView();
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("hr_no", hr_no);
		map.put("updateflag", 1);
		
		if(hflag==0){
			//update like!!!!!!!!!!!!!!!!!!!
			houseInfoDao.updateItem(map);
		}
		
		mv.setViewName("redirect:houseInfoReviewInfo.do?hr_no="+hr_no+"&hflag="+hflag);
		return mv;
	}
	
	
	
	/**
	 * @author INWOOK
	 * houseReservation.jsp페이지에서 결제 정보를 받아오고 처리하는 메소드
	 * @param session 아이디 값을 가져오기 위한 세션
	 * @param houseBean 페이지로 부터 form의 값을 가져옴
	 * @param p_cor 카드 회사
	 * @param p_data 카드 정보
	 * @return 페이지 이동
	 */
	@RequestMapping("/jsp/house/payment.do")
	public ModelAndView housePayment(HttpSession session, HouseReservationBean houseBean,
			@RequestParam(value="p_cor")String p_cor, @RequestParam(value="p_data")String p_data) {
		
		int m_no=(Integer)session.getAttribute("m_no");
		ModelAndView mv = new ModelAndView();
		houseBean.setHrr_state("예약");
		if(houseBean.getHrr_request().equals(null)||houseBean.getHrr_request().equals("")) {
			houseBean.setHrr_request("0");
		}
			
		System.out.println(houseBean);//얻어온 Bean 값 확인
		
		// HOUSE_ROOM_RESERVE 테이블에 데이터를 입력하는 다오메소드 호출 
		houseReserveDao.insertItem(houseBean);
		
		// Insert Payment, 결제 정보를 입력하기 위해 HashMap을 이용하여 데이터를 담음
		HashMap<String, String> payMap = new HashMap<String, String>();
		payMap.put("p_cor", p_cor);
		payMap.put("p_data", p_data);
		payMap.put("p_type", "신용카드");
		// PAYMENT 테이블에 데이터 입력하는 다오메소드 호출
		housePaymentDao.insertItem(payMap);
		
		// PointAdd포인트 추가
		HashMap<String, Object>flagMap = new HashMap<String, Object>();
		flagMap.put("flag", 1);
		flagMap.put("m_no", m_no);
		memberDao.updateItem(flagMap);
		
		
		// PointCheck를 위하여 임시로 포인트를 받아옴
		int pointTemp = (Integer)memberDao.selectList(m_no);
		System.out.println("현재 회원의 포인트 : " + pointTemp);
		
		
		HashMap<String, Object>pointGrade=new HashMap<String, Object>();
		pointGrade.put("m_no", m_no);
		if(pointTemp>=500) {
			//Silver
			System.out.println("silver로 업!");
			pointGrade.put("m_grade", "Silver");
		} else if(pointTemp>=1000) {
			//gold
			System.out.println("gold로 업!");
			pointGrade.put("m_grade", "Gold");
		} else if(pointTemp>=2000) {
			//platinum
			System.out.println("platinum로 업!");
			pointGrade.put("m_grade", "Platinum");
		}
		
		if(pointGrade.get("m_grade")!=null) {
			flagMap.put("flag", 2);
			flagMap.put("pointGrade", pointGrade);
			memberDao.updateItem(flagMap);
		}
		
		mv.setViewName("/jsp/house/payComplete");
		return mv;
	}
	
	
	/**
	 * @author INWOOK
	 * 예약 페이지 이동과 정보를 가져오는 메소드
	 * 
	 * @param r_no 방번호
	 * @param st 체크인 날짜
	 * @param en 체크아웃 날짜
	 * @param r_price 방 가격
	 * @param session FOR GET:m_no,h_no, SET:r_price
	 * @return session으로 m_no 유무에 따라: 무-로그인페이지, 유-예약페이지
	 */
	@RequestMapping("/jsp/house/reservation.do")
	public ModelAndView reservationDo(@RequestParam(value="r_no")int r_no,
			@RequestParam(value="st")String st, @RequestParam(value="en")String en, 
			@RequestParam(value="r_price")int r_price, HttpSession session) {
		
		ModelAndView mv = new ModelAndView();	
			int m_no = (Integer)session.getAttribute("m_no");
			int h_no = (Integer)session.getAttribute("h_no");
			session.setAttribute("r_price", r_price);
			session.setAttribute("r_no", r_no);
			System.out.println(r_price);
			System.out.println("홈번호" + h_no);
			System.out.println("룸번호" + r_no);
			System.out.println("회원번호" + m_no);
			System.out.println(m_no);
			//room filename dao
			HashMap<String, Integer> map = new HashMap<String, Integer>();
		
			map.put("r_no", r_no);
			map.put("h_no", h_no);
			//sql-getRoomFileName
			HashMap<String, String>roomInfo = (HashMap<String, String>)houseReserveDao.selectList(map);
			System.out.println("roomInfo : " +roomInfo);
			//member info dao
			HashMap<String, String>memInfo = (HashMap<String, String>)houseReserveDao.selectListA(m_no);
			System.out.println("meminfo:"+memInfo);
			//몇박인지 dao
			try {
				long day = diffOfDate(st, en);
				System.out.println("day : " + day);
				mv.addObject("day", day);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			mv.addObject("roomInfo", roomInfo);
			mv.addObject("memInfo", memInfo);
			
			mv.setViewName("/jsp/house/houseReservation");
			return mv;
		
	}
	
	/**
	 * @author INWOOK
	 * 날짜의 차일 구하는 일반 메소드
	 * @param begin 체크인 날짜
	 * @param end	체크아웃 날짜
	 * @return 차일 계산하여 리턴
	 * @throws Exception
	 */
	public static long diffOfDate(String begin, String end) throws Exception
	  {
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
	 
	    Date beginDate = formatter.parse(begin);
	    Date endDate = formatter.parse(end);
	 
	    long diff = endDate.getTime() - beginDate.getTime();
	    long diffDays = diff / (24 * 60 * 60 * 1000);
	 
	    return diffDays;
	  }
	
	
}

