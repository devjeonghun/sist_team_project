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
import com.aven.model.HouseBean;
import com.aven.model.RoomBean;

@Component
@Controller
public class AdminHouseController {
	@Resource(name="houseInfoDao")
	Dao houseInfoDao;
	@Resource(name="adminHouseDao")
	Dao adminHouseDao;
	
	/**
	 * @author EunJi
	 * AdminHouse - house List��� / �˻���� (no, name, category, address)
	 * @param hsearch �˻� �� ���� ex) h_no, h_name, ...
	 * @param hhsear �˻� �� ex) 1, �ʳ��Ͽ콺, ...
	 * @return
	 */
	
	@RequestMapping("/jsp/admin/house/hlist.do")
	public ModelAndView houseListDo(@RequestParam(value="hsearch")String hsearch, @RequestParam(value="hhsear")String hhsear, HttpSession session){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/admin/house/hlist");
		
		HashMap<Object, Object> map = new HashMap<Object, Object>();
		
		if(hhsear.equals("hh_no")){
			map.put("h_no",hsearch);
		}else if(hhsear.equals("hh_name")){
			map.put("h_name",hsearch);
		}else if(hhsear.equals("hh_category")){
			map.put("h_category",hsearch);
		}else if(hhsear.equals("hh_address")){
			map.put("h_address",hsearch);
		}
		
		mv.addObject("list",adminHouseDao.selectList(map));
		//list Dao
		session.setAttribute("hsearch", hsearch);
		session.setAttribute("hhsear", hhsear);
		session.setAttribute("job", "noShow");
		
		return mv;
	}
	
	/**
	 * @author EunJi
	 * howstay/jsp/house/houseInfo.do ��Ȱ��. houseInfo ���
	 * @param h_no house key
	 * @return
	 */
	
	@RequestMapping("/jsp/admin/house/houseInfo.do")
	public ModelAndView houseInfoDo(@RequestParam(value="h_no")int h_no, HttpSession session){
		ModelAndView mv = new ModelAndView();
		
		HashMap<Object, Object>hmap= new HashMap<Object, Object>();
		hmap.put("h_no", h_no);
		hmap.put("flag", 0);
		mv.addObject("hBean",houseInfoDao.selectList(hmap));
		
		mv.setViewName("/jsp/admin/house/houseInfo");
		
		String hsearch=(String)session.getAttribute("hsearch");
		String hhsear=(String)session.getAttribute("hhsear");
		
		String job = (String)session.getAttribute("job");
		if(job.equals("show")){
			session.setAttribute("job", "show");
		}
		
		session.setAttribute("hsearch", hsearch);
		session.setAttribute("hhsear", hhsear);
		return mv;
	}
	
	/**
	 * @author EunJi
	 * house info ���� edit�� ���� ���(howstay/jsp/house/houseInfo.do ��Ȱ��. houseInfo ���)
	 * house insert ���� 
	 * @param h_no
	 * @return
	 */
	
	@RequestMapping("/jsp/admin/house/houseInfoEdit.do")
	public ModelAndView houseInfoEditDo(@RequestParam(value="h_no")int h_no){
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/jsp/admin/house/houseInfoEdit");
		HashMap<Object, Object>hmap= new HashMap<Object, Object>();
		hmap.put("h_no", h_no);
		hmap.put("flag", 0);
		mv.addObject("hBean",houseInfoDao.selectList(hmap));
		return mv;
	}
	
	/**
	 * @author EunJi
	 * house insert / edit. bean���� �ȹ޾ƿ����� �ϳ��ϳ� param���� �����Խ��ϴ�.
	 * �۾� �� houseinfo �� �̵�, �Էµǰ� ������ ȭ�� �����ݴϴ�.
	 * @param h_no
	 * @param h_name
	 * @param h_category
	 * @param h_aname
	 * @param h_email
	 * @param h_tel
	 * @param h_address
	 * @param h_level
	 * @param fileItem
	 * @return
	 */
	
	@RequestMapping("/jsp/admin/house/houseInfoInCK.do")
	public ModelAndView houseInfoInCKDo(@RequestParam(value="h_no")int h_no,
			@RequestParam(value="h_name")String h_name,
			@RequestParam(value="h_category")String h_category,
			@RequestParam(value="h_aname")String h_aname,
			@RequestParam(value="h_email")String h_email,
			@RequestParam(value="h_tel")String h_tel,
			@RequestParam(value="h_address")String h_address,
			@RequestParam(value="h_level")int h_level,
			@RequestParam(value="h_lat")String h_lat,
			@RequestParam(value="h_long")String h_long,
			@RequestParam("file")MultipartFile fileItem){
		
		HouseBean hBean = new HouseBean();
		
		hBean.setH_name(h_name);
		hBean.setH_category(h_category);
		hBean.setH_aname(h_aname);
		hBean.setH_email(h_email);
		hBean.setH_tel(h_tel);
		hBean.setH_address(h_address);
		hBean.setH_level(h_level);
		hBean.setH_lat(h_lat);
		hBean.setH_long(h_long);
		
		String filePath = "C:\\Users\\DS\\Desktop\\spring\\howstay50\\howstay\\src\\main\\webapp\\upload\\";
		try {
			FileOutputStream fos = new FileOutputStream(filePath+fileItem.getOriginalFilename());
			fos.write(fileItem.getBytes());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		hBean.setH_fileFileName(fileItem.getOriginalFilename());
		
		if(h_no==0){
			adminHouseDao.insertItem(hBean);
			h_no=(Integer)adminHouseDao.selectList();
			//System.out.println(h_no);
		}else{
			hBean.setH_no(h_no);
			adminHouseDao.updateItem(hBean);
			//System.out.println("����������Ʈ");
		}
		ModelAndView mv = new ModelAndView();

		mv.setViewName("redirect:houseInfo.do?h_no="+h_no);
		return mv;
	}
	
	/**
	 * @author EunJi
	 * ajax - ��ư ������ �� HTML ��� ����.
	 * @param h_no
	 * @return
	 */
	
	@RequestMapping("/jsp/admin/house/RoomInfo.do")
	public ModelAndView RoomInfoDo(@RequestParam(value="h_no")int h_no, HttpSession session){
		ModelAndView mv = new ModelAndView();

		mv.setViewName("/jsp/admin/house/roomInfo.jsp?h_no="+h_no);
		
		session.setAttribute("h_no", h_no);
		return mv;
	}
	
	/**
	 * @author EunJi
	 * ajaxó�� ���ؼ� Json���� room list ����/ ���
	 * @param h_no
	 * @return
	 */
	
	@RequestMapping("/jsp/admin/house/RoominfoJ.do")
	public ModelAndView RoominfoJDo(@RequestParam(value="h_no")int h_no){
		ModelAndView mv = new ModelAndView();
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("h_no", h_no);
		map.put("flag", 0);
		mv.setViewName("/json/roomInfojson");
		mv.addObject("roomInfo",adminHouseDao.selectListA(map));
		return mv;
	}
	
	/**
	 * @author EunJi
	 * adminHouse - Room �߰�/ ����
	 * @param h_no
	 * @param session
	 * @param r_no
	 * @param r_concep
	 * @param r_price
	 * @param r_count
	 * @param r_option
	 * @param fileItem
	 * @return
	 */
	
	@RequestMapping("/jsp/admin/house/Roominsert.do")
	public ModelAndView RoominsertDo(@RequestParam(value="h_no")int h_no, HttpSession session,
			@RequestParam("r_no")int r_no,
			@RequestParam("r_concep")String r_concep,
			@RequestParam("r_price")int r_price,
			@RequestParam("r_count")int r_count,
			@RequestParam("r_option")String r_option,
			@RequestParam("file")MultipartFile fileItem){
		
		/*System.out.println(r_concep);bbs
		System.out.println(r_no);
		System.out.println(r_price);
		System.out.println(r_count);
		System.out.println(r_option);*/
		
		RoomBean room = new RoomBean();
		
		room.setH_no(h_no);
		room.setR_concep(r_concep);
		room.setR_price(r_price);
		room.setR_count(r_count);
		room.setR_option(r_option);
		
		ModelAndView mv = new ModelAndView();
		
		String filePath = "C:\\Users\\DS\\Desktop\\spring\\howstay50\\howstay\\src\\main\\webapp\\upload\\room\\";
		try {
			FileOutputStream fos = new FileOutputStream(filePath+fileItem.getOriginalFilename());
			fos.write(fileItem.getBytes());
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		room.setR_file(fileItem.getOriginalFilename());
		
		System.out.println(room);
		
		if(r_no==0){
			adminHouseDao.insertItemA(room);
			//insert room
		}else{
			room.setR_no(r_no);
			adminHouseDao.updateItemA(room);
			//update room
		}
		session.setAttribute("job", "show");
		
		mv.setViewName("redirect:houseInfo.do?h_no="+h_no);
		return mv;
				
	}
	
	
	/**
	 * @author Eunji
	 * Room ���� ��ư�� ������ �� Room������ ��µǾ� ���ϰ� ���������մϴ�. 
	 * @param h_no
	 * @param r_no
	 * @return
	 */
	
	
	@RequestMapping("/jsp/admin/house/RoomEdit.do")
	public ModelAndView RoomEditDo(@RequestParam(value="h_no")int h_no, @RequestParam(value="r_no")int r_no){
		ModelAndView mv = new ModelAndView();
		HashMap<Object, Object>map = new HashMap<Object, Object>();
		map.put("flag", 1);
		map.put("h_no", h_no);
		map.put("r_no", r_no);
		
		mv.setViewName("/json/roomEditjson");
		mv.addObject("roomEd",adminHouseDao.selectListA(map));
		
		
		return mv;
	}
	
}
