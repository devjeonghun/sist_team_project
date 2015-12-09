package com.aven.howstay;

import java.io.FileOutputStream;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.aven.dao.Dao;
import com.aven.model.TourBean;

@Component
@Controller
public class TourController {
	@Resource(name="tourDao")
	Dao tourDao;
	
	/**
	 * @author IkHyun
	 * 하우스 투어 메인 뿌려주는 기능
	 * @return 하우스 투어 메인페이지 이동
	 */
	@RequestMapping("/jsp/tour/mainTour.do")
	public ModelAndView menuTour(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/tour/mainTour");
		mv.addObject("list", tourDao.selectList());
		return mv;
	}
	
	/**
	 * @author IkHyun
	 * 하우스 투어 인포
	 * @param ct_no cs_tour의 number
	 * @return 하우스 인포 페이지 이동
	 */
	@RequestMapping("/jsp/tour/infoTour.do")
	public ModelAndView infoTour(@RequestParam(value="ct_no")int ct_no,
			@RequestParam(value="page")int page, 
			@RequestParam(value="keyword",required=false)String keyword){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/tour/infoTour");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 0);
		map.put("ct_no", ct_no);
		mv.addObject("info", tourDao.selectList(map));
		return mv;
	}
	
	/**
	 * @author IkHyun
	 * 하우스 투어 삭제
	 * @param ct_no cs_tour의 number
	 * @param page 해당 게시물이 있던 페이지
	 * @return
	 */
	@RequestMapping("/jsp/tour/deleteTour.do")
	public String deleteTour(@RequestParam("ct_no")int ct_no,
			@RequestParam(value="page")int page){
		tourDao.deleteItem(ct_no);
		return "redirect:mainTour.do?page=1";
	}
	
	/**
	 * @author IkHyun
	 * 하우스 투어 글쓰기
	 * @param bean
	 * @param session
	 * @return
	 */
	@RequestMapping("/jsp/tour/insertTour.do")
	public ModelAndView insertTour(TourBean bean, 
			@RequestParam("file")MultipartFile fileItem,
			HttpSession session){
		System.out.println("check");
		ModelAndView mv = new ModelAndView();
		String filePath = "C:\\NextDev\\springProject\\howstay\\src\\main\\webapp\\upload\\tourImage\\";
		try {
			FileOutputStream fos = new FileOutputStream(filePath+fileItem.getOriginalFilename());
			fos.write(fileItem.getBytes());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		int m_no = (Integer)tourDao.selectListA(session.getAttribute("m_id"));
		bean.setM_no(m_no);
		bean.setCt_file(fileItem.getOriginalFilename());
		tourDao.insertItem(bean);
		
		mv.setViewName("redirect:mainTour.do?page=1");
		return mv;
	}
	
	/**
	 * @author IkHyun
	 * 하우스 투어 조회수 증가
	 * @param ct_no
	 * @param page
	 * @return
	 */
	@RequestMapping("/jsp/tour/hitTour.do")
	public String hitTour(@RequestParam("ct_no")int ct_no,
			@RequestParam(value="page")String page){
		tourDao.updateItem(ct_no);
		return "redirect:infoTour.do?ct_no="+ct_no+"&page="+page;
	}	
	
	/**
	 * @author IkHyun
	 * @param ct_no
	 * @return
	 * 수정할 정보를 가져옴
	 */
	@RequestMapping("/jsp/tour/selectInfo.do")
	public ModelAndView selectInfo(@RequestParam("ct_no")int ct_no){
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/jsp/tour/modifyTour");
		
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("flag", 0);
		map.put("ct_no", ct_no);
		mv.addObject("bean",tourDao.selectList(map));
		
		return mv;
	}
	
	/**
	 * @author IkHyun
	 * TourModify(투어게시판 수정 부분)완료
	 * @param bean form 값을 가져옴
	 * @param fileItem 첨부할 파일을 가져옴
	 * @param ct_no 글번호
	 * @param page 페이지 번호
	 * @return info 페이지로 이동
	 */
	@RequestMapping("/jsp/tour/modifyInfo.do")
	public String modifyInfo(TourBean bean,			
			@RequestParam("file")MultipartFile fileItem,
			@RequestParam("ct_no")int ct_no,
			@RequestParam("page")int page) {
		
		String filePath = "C:\\NextDev\\springProject\\howstay\\src\\main\\webapp\\upload\\tourImage\\";
		FileOutputStream fos;
		try {
			fos = new FileOutputStream(filePath + fileItem.getOriginalFilename());
			fos.write(fileItem.getBytes());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		bean.setCt_file(fileItem.getOriginalFilename());
		bean.setCt_no(ct_no);
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 0);
		map.put("bean", bean);
		
		tourDao.updateItemA(map);
		
		return "redirect:/jsp/tour/infoTour.do?ct_no="+ct_no+"&page="+page;
	}
}
