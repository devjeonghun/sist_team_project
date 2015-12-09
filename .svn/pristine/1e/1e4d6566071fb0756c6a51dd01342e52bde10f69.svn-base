package com.aven.howstay;

/**
 * Main 컨트롤러
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

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.aven.dao.Dao;

@Component
@Controller
public class MainController {
	@Resource(name = "mainDao")
	private Dao mainDao;

	/**
	 * @author JEONGHOON
	 * main.jsp Ajax처리를 위한 메소드
	 * @return json에 사용할 페이지
	 */
	@RequestMapping("/jsp/mainlist1.do")
	public ModelAndView mainList() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("json/mainjson");
		mv.addObject("hbean", mainDao.selectList());

		return mv;
	}

	/**
	 * @author JEONGHOON
	 * main.jsp Ajax처를 위한 메소드2
	 * @return json에 사용할 페이지
	 */
	@RequestMapping("/jsp/mainlist2.do")
	public ModelAndView mainList2() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("json/ctjson");
		mv.addObject("TAList", mainDao.selectList(0));
		
		return mv;
	}
	

}
