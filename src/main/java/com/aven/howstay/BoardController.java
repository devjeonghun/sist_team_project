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
	 * Q&A ����Ʈ �ѷ��ִ� ��� 
	 * 
	 * @return Q&A����Ʈ �ѷ���
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
	 * Q&A �۾��� �α����� �Է±��  
	 * @param bean Qa������
	 * @param session �α������� ������
	 * 
	 * @return Q&A �۾��� �����ϰ� ����
	 */
	@RequestMapping("/jsp/board/boardQaInsert.do")
	public String boardQaInsert(BoardQaBean bean, HttpSession session){
		/*setViewName("/jsp/board/qa");*/
		/*bean.setM_no(m_no);*/  //����
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
	 * Q&A ����Ʈ�� ������ ������ ��������
	 * @param cq_no ������ qa�� PK ����
	 * 
	 * @return ������ Q&A�� �������� ������ 
	 */
	@RequestMapping("/jsp/board/boardqaInfo.do")
	public ModelAndView boardQaInfo(@RequestParam("cq_no")int cq_no) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/board/qaInfo");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		map.put("flag", 0);
		map.put("cq_no", cq_no);
		
		boardDao.updateItem(map);
		System.out.println("hit��");
		mv.addObject("bean",boardDao.selectListA(map));
		System.out.println("������");
		return mv;
		
	}
	

	/**
	 * @author KwangSeok
	 * Q&A �������������� �������
	 * @param cq_no ������ qa�� PK ����
	 * 
	 * @return ������ Q&A�� ������ ���� 
	 */
	@RequestMapping("/jsp/board/boardQaDelete.do")
	public String boardQaDelete(@RequestParam("cq_no")int cq_no){
		System.out.println("qaDEL");
		boardDao.deleteItem(cq_no);
		return "redirect:qaList.do";
	}
	
	/**
	 * @author KwangSeok
	 * Q&A �������������� �������
	 * @param cq_no ������ qa�� PK ����
	 * 
	 * @return ������ Q&A�� ������������ ������ 
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
	 * Q&A �������������� �������
	 * @param cq_no ������ qa�� PK ����
	 * 
	 * @return ������ Q&A�� ������ ���� 
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
	
	
	
															/*��������*/
	/**
	 * @author KwangSeok
	 * �������� ����Ʈ �ѷ��ֱ�
	 * 
	 * @return �������� ����Ʈ �ѷ��ֱ� 
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
	 * �������� ������
	 * 
	 * @return �������� ������  
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
	 * FAQ ����Ʈ�ѷ��ֱ�
	 * 
	 * @return FAQ ����Ʈ  
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
