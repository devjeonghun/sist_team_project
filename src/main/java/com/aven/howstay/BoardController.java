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
import com.aven.model.BoardQaBean;

@Component
@Controller
public class BoardController {
	@Resource(name="boardDao")
	Dao boardDao;  
	
													/*	 Q&A	*/
	/**
	 * @author KwangSeok
	 * Q&A 리스트 뿌려주는 기능 
	 * 
	 * @return Q&A리스트 뿌려줌
	 */
	@RequestMapping("/jsp/board/qaList.do")
	public ModelAndView qaList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/board/qa");
		mv.addObject("list",boardDao.selectList());
		
		return mv;
	}
	
	/**
	 * @author KwangSeok
	 * Q&A 글쓰기 로그인후 입력기능  
	 * @param bean Qa빈정보
	 * @param session 로그인정보 가져옴
	 * 
	 * @return Q&A 글쓰기 가능하게 해줌
	 */
	@RequestMapping("/jsp/board/boardQaInsert.do")
	public String boardQaInsert(BoardQaBean bean, HttpSession session){
		/*setViewName("/jsp/board/qa");*/
		/*bean.setM_no(m_no);*/  //보류
		String m_id=(String)session.getAttribute("m_id");
		session.setAttribute("m_id", m_id);
		
		bean.setM_no((Integer)boardDao.selectList(m_id));
		
		System.out.println("haha");
		boardDao.insertItem(bean);
		
		System.out.println("gogo");
		return "redirect:/jsp/board/qaList.do";
	}
	
	/**
	 * @author KwangSeok
	 * Q&A 리스트중 선택한 정보의 상세페이지
	 * @param cq_no 선택한 qa의 PK 정보
	 * 
	 * @return 선택한 Q&A의 상세정보를 보여줌 
	 */
	@RequestMapping("/jsp/board/boardqaInfo.do")
	public ModelAndView boardQaInfo(@RequestParam("cq_no")int cq_no) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/board/qaInfo");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 0);
		map.put("cq_no", cq_no);
		
		boardDao.updateItem(map);
		System.out.println("hit완");
		mv.addObject("bean",boardDao.selectListA(map));
		System.out.println("인포완");
		return mv;
		
	}
	

	/**
	 * @author KwangSeok
	 * Q&A 상세페이지에서의 삭제기능
	 * @param cq_no 선택한 qa의 PK 정보
	 * 
	 * @return 선택한 Q&A의 정보를 삭제 
	 */
	@RequestMapping("/jsp/board/boardQaDelete.do")
	public String boardQaDelete(@RequestParam("cq_no")int cq_no){
		System.out.println("qaDEL");
		boardDao.deleteItem(cq_no);
		return "redirect:qaList.do";
	}
	
	/**
	 * @author KwangSeok
	 * Q&A 상세페이지에서의 수정기능
	 * @param cq_no 선택한 qa의 PK 정보
	 * 
	 * @return 선택한 Q&A의 수정할정보를 가져옴 
	 */
	@RequestMapping("/jsp/board/boardQaSelect.do")
	public ModelAndView boarQaModSelect(@RequestParam("cq_no")int cq_no){
		ModelAndView mv = new ModelAndView();	
		
		mv.setViewName("/jsp/board/qaModify");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 0);
		map.put("cq_no", cq_no);
		mv.addObject("bean",boardDao.selectListA(map));
		
		return mv;
	}
	
	/**
	 * @author KwangSeok
	 * Q&A 상세페이지에서의 수정기능
	 * @param cq_no 선택한 qa의 PK 정보
	 * 
	 * @return 선택한 Q&A의 정보를 수정 
	 */
	@RequestMapping("/jsp/board/boardQaModify.do")
	public String boardMod(@RequestParam("cq_no")int cq_no,BoardQaBean bean){
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		/*BoardQaBean qaBean = new BoardQaBean();
		qaBean.setCq_no(cq_no);*/
		
		map.put("flag", "qm");
		map.put("bean", bean);
		
		boardDao.updateItemA(map);		
		
		return "redirect:qaList.do";
	}
	
	
	
															/*공지사항*/
	/**
	 * @author KwangSeok
	 * 공지사항 리스트 뿌려주기
	 * 
	 * @return 공지사항 리스트 뿌려주기 
	 */
	@RequestMapping("/jsp/board/noticeList.do")
	public ModelAndView boardNoticeList(){
		ModelAndView mv = new ModelAndView();
		System.out.println("notice");
		
		mv.setViewName("/jsp/board/notice");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 1);
		
		mv.addObject("list",boardDao.selectListA(map));
		
		
		return mv;
	}
	
	/**
	 * @author KwangSeok
	 * 공지사항 상세정보
	 * 
	 * @return 공지사항 상세정보  
	 */
	@RequestMapping("/jsp/board/noticeHit.do")
	public ModelAndView boardNoticeInfo(@RequestParam("cn_no")int cn_no){
		ModelAndView mv= new ModelAndView();
		mv.setViewName("/jsp/board/infoNotice");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", "n1");
		map.put("cn_no",cn_no);
		
		boardDao.updateItem(map);
		mv.addObject("bean",boardDao.selectListA(map));
		
		
		return mv;
		
	}
	
														/*	FAQ   */
	
	/**
	 * @author KwangSeok
	 * FAQ 리스트뿌려주기
	 * 
	 * @return FAQ 리스트  
	 */
	@RequestMapping("/jsp/board/fnqList.do")
	public ModelAndView boardFaqList(){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/board/faq");
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", "f1");
		
		mv.addObject("list",boardDao.selectListA(map));
		
		return mv;
	}
}
