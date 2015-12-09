package com.aven.howstay;

import java.io.FileOutputStream;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aven.dao.Dao;
import com.aven.model.AdminMonthlyBean;
import com.aven.model.AdminMonthlyCircleBean;
import com.aven.model.AdminMonthlyTotalSaleBean;
import com.aven.model.BoardNoticeBean;


@Component
@Controller
public class AdminController {
	
	@Resource(name="adminBoardNoticeDao")
	private Dao adminBoardNoticeDao;
	
	@Resource(name="adminBoardNoticeInfoDao")
	private Dao adminBoardNoticeInfoDao;
	
	@Resource(name="adminStatisticeDao")
	private Dao adminStatisticeDao;
	
	@Resource(name="adminTourDao")
	private Dao adminTourDao;
	
	//관리자 공지사항 리스트 받기
	@RequestMapping("/jsp/admin/board/adnotice.do")
	public ModelAndView adminBoardListselect(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/admin/board/notice");
		mv.addObject("ANlist", adminBoardNoticeDao.selectList());
		return mv;
	}
	
	//관리자 공지사항 게시물 상세정보	
	@RequestMapping("/jsp/admin/board/adnoticeInfo.do")
	public ModelAndView adminBoardInfo(@RequestParam(value="no")int no){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/admin/board/noticeInfo");
		mv.addObject("Info", adminBoardNoticeInfoDao.selectList(no));
		return mv;
	}
	
	/**
	 * @author KwangSeok
	 * 기능
	 * admin NOTICE 입력기능
	 */
	@RequestMapping("/jsp/admin/board/adNotInsert.do")
	public ModelAndView adminNotIns(@RequestParam("cn_title")String cn_title,
			@RequestParam("cn_contents")String cn_contents,			
			@RequestParam("cn_file")MultipartFile fileItem ){
		
		BoardNoticeBean bean = new BoardNoticeBean();
		bean.setCn_title(cn_title);
		bean.setCn_contents(cn_contents);
		
		//String filePath = "\\howstay\\src\\main\\webapp\\upload\\notice\\";
		String filePath = "C:\\howSVNsts2\\howstay\\src\\main\\webapp\\upload\\notice\\";
		
		/*System.out.println(fileItem.getOriginalFilename());
		System.out.println(filePath);*/
		try {
			
			FileOutputStream fos = new FileOutputStream(filePath+fileItem.getOriginalFilename());
			fos.write(fileItem.getBytes());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		bean.setCn_file(fileItem.getOriginalFilename());
		
		/*HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", "ni");
		map.put("bean", bean);*/
		
		
		adminBoardNoticeDao.insertItem(bean);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:adnotice.do");
		
		return mv;
		//return "adnotice.do";
		//return "redirect:adnotice.do";
	}
	
	@RequestMapping("/jsp/admin/board/adnoticeDel.do")
	public ModelAndView adNoticeDelete(@RequestParam("cn_no")int cn_no){
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 2);
		map.put("cn_no", cn_no);
		
		adminBoardNoticeDao.deleteItem(map);
		
		ModelAndView mv =new ModelAndView();
		mv.setViewName("redirect:adnotice.do");
		return mv;
	}
	
	
	
	//								FAQ 시작
	/**
	 * @author KwangSeok
	 * 기능
	 * admin FAQ 리스트 가져오기
	 */
	@RequestMapping("/jsp/admin/board/adminFaq.do")
	public ModelAndView adminFaqList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsp/admin/board/adminFaq");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 0);
		
		mv.addObject("list",adminBoardNoticeDao.selectList(map));
		
		return mv;
	}
	
	/**
	 * @author KwangSeok
	 * 기능
	 * admin FAQ 상세정보 가져오기
	 */
	@RequestMapping("/jsp/admin/board/adFaqInfo.do")
	public ModelAndView adminFaqInfo(@RequestParam("cf_no")int cf_no){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/admin/board/adminFaqInfo");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", "fi");
		map.put("cf_no", cf_no);
				System.out.println("cf_no");
		mv.addObject("info",adminBoardNoticeDao.selectList(map));
		
		return mv;
	}
	
	/**
	 * @author KwangSeok
	 * 기능
	 * admin FAQ 정보 삭제
	 */
	@RequestMapping("/jsp/admin/board/adminFaqDel.do")
	public String adminFaqD(@RequestParam("cf_no")int cf_no){
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 1);
		map.put("cf_no", cf_no);
		
		adminBoardNoticeDao.deleteItem(map);
		
		return "redirect:adminFaq.do";
	}
	
	//						///		Q&A 시작       ///
	/**
	 * @author KwangSeok
	 * 기능
	 * admin Q&A 리스트 가져오기
	 */
	@RequestMapping("/jsp/admin/board/adminQa.do")
	public ModelAndView adminQaList(){
		ModelAndView mv = new ModelAndView();
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 1);
		
		mv.addObject("list",adminBoardNoticeDao.selectList(map));
		
		return mv;
		
	}
	
	/**
	 * @author KwangSeok
	 * 기능
	 * admin Q&A 상세정보 가져오기
	 */
	@RequestMapping("/jsp/admin/board/adminQaInfo.do")
	public ModelAndView adminQaInfo(@RequestParam("cq_no")int cq_no){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/admin/board/adminQaInfo");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", "aqi");
		map.put("cq_no", cq_no);
		
		mv.addObject("bean",adminBoardNoticeDao.selectList(map));
		
		return mv;
	}
	
	/**
	 * @author KwangSeok
	 * 기능
	 * admin QA 정보삭제
	 */
	@RequestMapping("/jsp/admin/board/adminQaDel.do")
	public String adminQaD(@RequestParam("cq_no")int cq_no){
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 0);
		map.put("cq_no",cq_no);
		
		adminBoardNoticeDao.deleteItem(map);
		
		return "redirect:adminQa.do";
	}
	
	
	/*
	    * *************** 통계 시작 **************
	    */
	   /*
	    * @Byeong Yong
	    * admin 통계 - 월 건수
	    */
	   @RequestMapping("/jsp/admin/statistics/admonthlyReserve.do")
	   public ModelAndView adminStatisticeMonthlyReserve(){
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("/json/monthlyjson");
	      HashMap<Object, Object> map = new HashMap<Object, Object>();
	      map.put("state", "예약");
	      map.put("temp", "monthlyReserve");
	      mv.addObject("data", monthlyReserve((List)adminStatisticeDao.selectList(map)));
	      return mv;
	   }
	   
	   public JSONObject monthlyReserve(List<AdminMonthlyBean> list){
	      JSONObject data= new JSONObject();
	      JSONArray categoriesArray = new JSONArray();
	      JSONArray seriesArrayData = new JSONArray();
	      JSONObject seriesObj = new JSONObject();
	      JSONArray seriesArray = new JSONArray();

	      for (int i = 0; i < list.size(); i++) {
	         AdminMonthlyBean bean = list.get(i);
	         categoriesArray.add(bean.getRSRV_YM());
	         seriesArrayData.add(bean.getCNT());
	      }
	      seriesObj.put("name", "예약");
	      seriesObj.put("data", seriesArrayData);
	      seriesArray.add(seriesObj);
	      data.put("categories", categoriesArray);
	      data.put("series", seriesArray);
	      return data;
	   }
	   
	   /*
	    * @Byeong Yong
	    * admin 통계 - 월 매출
	    */
	   @RequestMapping("/jsp/admin/statistics/admonthlyTotalSale.do")
	   public ModelAndView adminStatisticeMonthlyTotalSale(){
	      ModelAndView mv = new ModelAndView();
	      HashMap<Object, Object> map = new HashMap<Object, Object>();
	      map.put("state", "예약");
	      map.put("temp", "monthlyTotalSale");
	      mv.setViewName("/json/monthlyjson");      
	      mv.addObject("data", monthlyTotalSale((List)adminStatisticeDao.selectList(map)));
	      return mv;
	   }
	   
	   public JSONObject monthlyTotalSale(List<AdminMonthlyTotalSaleBean> list){
	      JSONObject data= new JSONObject();
	      JSONArray categoriesArray = new JSONArray();
	      JSONArray seriesArrayData = new JSONArray();
	      JSONObject seriesObj = new JSONObject();
	      JSONArray seriesArray = new JSONArray();

	      for (int i = 0; i < list.size(); i++) {
	         AdminMonthlyTotalSaleBean bean = list.get(i);
	         categoriesArray.add(bean.getSTARTDATE());
	         seriesArrayData.add(bean.getTOTAL());
	      }
	      seriesObj.put("name", "총 매출");
	      seriesObj.put("data", seriesArrayData);
	      seriesArray.add(seriesObj);
	      data.put("categories", categoriesArray);
	      data.put("series", seriesArray);
	      return data;
	   }
	   
	   /*
	    * @Byeong Yong
	    * admin 통계 - 가입자 연령별통계
	    */
	   @RequestMapping("/jsp/admin/statistics/admonthlyCircle.do")
	   public ModelAndView adminStatisticsMonthlyCircle(){
		   ModelAndView mv = new ModelAndView();
		   HashMap<Object, Object> map = new HashMap<Object, Object>();
		   map.put("temp", "monthlyCircle");
		   mv.setViewName("/json/monthlyjson");
		   mv.addObject("data", monthlyCircle((List)adminStatisticeDao.selectList(map)));
		   return mv;
		}
		
		public JSONObject monthlyCircle(List<AdminMonthlyCircleBean> list){
			JSONObject data = new JSONObject();
			JSONObject seriesobj = new JSONObject();
			JSONArray seriesDataArray = new JSONArray();
			JSONArray seriesArray = new JSONArray();
		
			for(int i=0; i<list.size(); i++){
				JSONObject obj1 = new JSONObject();
				AdminMonthlyCircleBean bean = list.get(i);
				obj1.put("name", bean.getAGEST()+"대");
				obj1.put("y", bean.getPERSENT());
				seriesDataArray.add(obj1);
			}
			seriesobj.put("data",seriesDataArray);
			seriesobj.put("name", "퍼센트");
			seriesobj.put("colorByPoint","true");
			seriesArray.add(seriesobj);
			data.put("series", seriesArray);
			return data;
		}
		
		
		
	/*
	 * *************** 어드민 투어 시작 ***************
	 */
	
	/**
	 * @author IkHyun
	 * 기능
	 * -어드민 투어에 리스트 뿌려주기
	 * @return
	 */
	@RequestMapping("/jsp/admin/board/adminTour.do")
	public ModelAndView adminTourList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/admin/board/adminTourList");
		mv.addObject("list",adminTourDao.selectList());
		
		return mv;
	}
	
	/**
	 * @author IkHyun
	 * @param ct_no
	 * @param page
	 * @param keyword
	 * @return
	 */
	@RequestMapping("/jsp/admin/board/adminInfoTour.do")
	public ModelAndView adminInfoTour(@RequestParam(value="ct_no")int ct_no,
			@RequestParam(value="page")int page,
			@RequestParam(value="keyword",required=false)String keyword){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/admin/board/adminTourInfo");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 0);
		map.put("ct_no", ct_no);
		mv.addObject("info", adminTourDao.selectList(map));
		return mv;
	}
	
	/**
	 * @author IkHyun
	 * 기능
	 * -어드민 투어에서 삭제
	 * @param ct_no
	 * @return
	 */
	
	@RequestMapping("/jsp/admin/board/adminDelTour.do")
	public String adminDelTour(@RequestParam("ct_no")int ct_no){
	
		adminTourDao.deleteItem(ct_no);
		
		return "redirect:adminTour.do";
	
}
}
