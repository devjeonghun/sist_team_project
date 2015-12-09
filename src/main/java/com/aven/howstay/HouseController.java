package com.aven.howstay;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

/**
 * House ��Ʈ�ѷ�
 * ��Ʈ�ѷ��� ���� Struts.xml�� Action ������ ������ ���ÿ� �մϴ�.
 * @RequestMapping(���/����������̸�.do)�� �̿��Ͽ� �ش� *.do�� ��Ʈ�ѷ��� �����մϴ�.
 * 
 * Dao�� ����Ͻ� ����
 * �������̽��� Dao�� �ν��Ͻ������� �����ϰ� 
 * �ش� ������� ���� @Resource(name="servlet-context���� ������ id")�� �̿��Ͽ�
 * ����Ϸ��� �ٿ��� ������ �ݴϴ�.
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
	 * houseMain�������̵��� �ʿ��� ����Ʈ�� �������� �޼ҵ�
	 * @return �Ͽ콺 ����Ʈ�� �ѷ��� ���� list, rlist
	 */
	@RequestMapping("/jsp/house/hmList.do")
	public ModelAndView menuHouse() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/house/houseMain");	// �̵� ������ set
		mv.addObject("list", houseDao.selectList());	// �ʿ��� ����Ʈ key�� value�� add
		//���� �ٿ� ����� �����ϱ� ���� �ؽ���
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("flag", 0); // flag�� key�� ����
		mv.addObject("rlist", houseDao.selectList(map));
		
		return mv;
	}
	
	/**
	 * @author INWOOK
	 * �Ͽ콺 ��ġ�� �ʿ��� ������ �޾ƿ� �˻����ִ� �޼ҵ�
	 * 
	 * @param st üũ��
	 * @param en üũ�ƿ�
	 * @param r_count �ο���
	 * @param keyword �˻���
	 * @return �Ķ���� ������ ������ �˻��� ����� value���� key�� list
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
		// ���� �ٿ� ����� ���� �ؽ���
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("flag", 1);	// �����ڸ�key�� flag�� ��
		map.put("bean", bean); // �˻��ϴµ� �ʿ��� ������ bean�� ��Ƽ� �ؽ��ʿ� �־���
		
		mv.addObject("list", houseDao.selectList(map));//searchHouse
		mv.addObject("r_count", r_count);
		mv.addObject("keyword", keyword);
		mv.addObject("st", st);
		mv.addObject("en", en);
		return mv;
	}
	
	/**
	 * @author EunJi
	 * �Ͽ콺 info �̾ƿ��� Room list ���.
	 * room list��½� rflag�� �־� �����ư Ȱ��ȭ ������ ����.
	 * + INWOOK - st, en�κ� required=false�� ���� ��� �޼ҵ� �����ϵ��� ����
	 * @param h_no �Ͽ콺 no
	 * @param page ������default
	 * @param st üũ��
	 * @param en üũ�ƿ�
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
			//���� ��¥, �Ͽ콺���ο��� ��¥���� �����Ҷ����.
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
			
			//System.out.println(i+"  Ȧ��"+roomInfo);
		}
		
		mv.addObject("room", room);
		mv.addObject("st",st);
		mv.addObject("en",en);		
		return mv;
	}
	
	/**
	 * @author Eunji
	 * ���� ajax�� �ҷ����� & jsonó��.
	 * @param h_no - house no
	 * @param hflag - hitflag. ���������� �̵��� hit���� �ʱ� ���ؼ� ��������ϴ�.
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
	 * review������ ajax�� html
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
	 * reviewinfo - ������ / update hit
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
	 * houseReservation.jsp���������� ���� ������ �޾ƿ��� ó���ϴ� �޼ҵ�
	 * @param session ���̵� ���� �������� ���� ����
	 * @param houseBean �������� ���� form�� ���� ������
	 * @param p_cor ī�� ȸ��
	 * @param p_data ī�� ����
	 * @return ������ �̵�
	 */
	@RequestMapping("/jsp/house/payment.do")
	public ModelAndView housePayment(HttpSession session, HouseReservationBean houseBean,
			@RequestParam(value="p_cor")String p_cor, @RequestParam(value="p_data")String p_data) {
		
		int m_no=(Integer)session.getAttribute("m_no");
		ModelAndView mv = new ModelAndView();
		houseBean.setHrr_state("����");
		if(houseBean.getHrr_request().equals(null)||houseBean.getHrr_request().equals("")) {
			houseBean.setHrr_request("0");
		}
			
		System.out.println(houseBean);//���� Bean �� Ȯ��
		
		// HOUSE_ROOM_RESERVE ���̺� �����͸� �Է��ϴ� �ٿ��޼ҵ� ȣ�� 
		houseReserveDao.insertItem(houseBean);
		
		// Insert Payment, ���� ������ �Է��ϱ� ���� HashMap�� �̿��Ͽ� �����͸� ����
		HashMap<String, String> payMap = new HashMap<String, String>();
		payMap.put("p_cor", p_cor);
		payMap.put("p_data", p_data);
		payMap.put("p_type", "�ſ�ī��");
		// PAYMENT ���̺� ������ �Է��ϴ� �ٿ��޼ҵ� ȣ��
		housePaymentDao.insertItem(payMap);
		
		// PointAdd����Ʈ �߰�
		HashMap<String, Object>flagMap = new HashMap<String, Object>();
		flagMap.put("flag", 1);
		flagMap.put("m_no", m_no);
		memberDao.updateItem(flagMap);
		
		
		// PointCheck�� ���Ͽ� �ӽ÷� ����Ʈ�� �޾ƿ�
		int pointTemp = (Integer)memberDao.selectList(m_no);
		System.out.println("���� ȸ���� ����Ʈ : " + pointTemp);
		
		
		HashMap<String, Object>pointGrade=new HashMap<String, Object>();
		pointGrade.put("m_no", m_no);
		if(pointTemp>=500) {
			//Silver
			System.out.println("silver�� ��!");
			pointGrade.put("m_grade", "Silver");
		} else if(pointTemp>=1000) {
			//gold
			System.out.println("gold�� ��!");
			pointGrade.put("m_grade", "Gold");
		} else if(pointTemp>=2000) {
			//platinum
			System.out.println("platinum�� ��!");
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
	 * ���� ������ �̵��� ������ �������� �޼ҵ�
	 * 
	 * @param r_no ���ȣ
	 * @param st üũ�� ��¥
	 * @param en üũ�ƿ� ��¥
	 * @param r_price �� ����
	 * @param session FOR GET:m_no,h_no, SET:r_price
	 * @return session���� m_no ������ ����: ��-�α���������, ��-����������
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
			System.out.println("Ȩ��ȣ" + h_no);
			System.out.println("���ȣ" + r_no);
			System.out.println("ȸ����ȣ" + m_no);
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
			//������� dao
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
	 * ��¥�� ���� ���ϴ� �Ϲ� �޼ҵ�
	 * @param begin üũ�� ��¥
	 * @param end	üũ�ƿ� ��¥
	 * @return ���� ����Ͽ� ����
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

