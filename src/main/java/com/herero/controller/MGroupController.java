package com.herero.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.herero.sevice.GroupService;
import com.herero.vo.CategoryVo;
import com.herero.vo.GroupVo;
import com.herero.vo.ProvinceVo;
import com.herero.vo.RegionVo;
import com.herero.vo.UserVo;

@Controller
@RequestMapping(value = "/mgroup")
public class MGroupController {

	@Autowired
	private GroupService groupService;

	// 소모임 가입폼
	@RequestMapping(value = "/groupForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupForm(HttpSession session) {
		System.out.println("GroupController.groupForm()");
		
		//로그인 사용자만 가입폼에 접근 가능
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		if(authUser != null) {
			return "group/groupForm";
		}else {
			return "redirect:/user/loginForm";
		}
	}

	
	// 소모임 가입폼 > 소모임위치선택모달 > 지역리스트 가져오기
	@ResponseBody
	@RequestMapping(value = "/getProvinceList", method = { RequestMethod.GET, RequestMethod.POST })
	public List<ProvinceVo> getProvinceList(@RequestParam("pKeyword") String pKeyword) {
		System.out.println("GroupController.getProvinceList()");

		List<ProvinceVo> provinceList = groupService.getProvinceList(pKeyword);

		return provinceList;

	}

	// 소모임 가입폼 > 소모임관심사선택모달 > 관심사리스트 가져오기
	@ResponseBody
	@RequestMapping(value = "/getCategoryList", method = { RequestMethod.GET, RequestMethod.POST })
	public List<CategoryVo> getCategoryList() {
		System.out.println("GroupController.getCategoryList()");

		List<CategoryVo> categoryList = groupService.getCategoryList();

		return categoryList;

	}
	
	// 소모임 가입폼 > 소모임명(그룹명) 중복체크 
	@ResponseBody
	@RequestMapping(value = "/groupNameCheck", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Integer> groupNameCheck(@RequestParam("group_name") String group_name) {
		System.out.println("GroupController.groupNameCheck()");

		Map<String, Integer> resultMap = groupService.groupNameCheck(group_name);

		return resultMap;

	}
	
	
	// 소모임 가입폼 > 주소(url) 중복체크 
	@ResponseBody
	@RequestMapping(value = "/groupUrlCheck", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, Integer> groupUrlCheck(@RequestParam("group_url") String group_url) {
		System.out.println("GroupController.groupUrlCheck()");

		Map<String, Integer> resultMap = groupService.groupUrlCheck(group_url);

		return resultMap;

	}
	
	
	// 소모임 가입폼 > 소모임 만들기
	@RequestMapping(value = "/addGroup", method = { RequestMethod.GET, RequestMethod.POST })
	public String addGroup(@ModelAttribute GroupVo groupVo, @RequestParam("mainImg") int mainImg, @RequestParam("file") MultipartFile[] files, HttpSession session) {
		System.out.println("GroupController.addGroup()");
		

		//로그인 사용자만 가입폼에 접근 가능
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		int userNo = authUser.getUser_no();
		if(authUser != null) {
			groupService.addGroup(groupVo, mainImg, files, userNo); 
			
			return "redirect:/group/groupMain";
		}else {
			return "redirect:/user/loginForm";
		}
		
		
		
		
	}
	
		

	// 소모임 메인 + 리스트
	@RequestMapping(value = "/groupMain", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupMain(@ModelAttribute GroupVo groupVo, Model model) {
		System.out.println("GroupController.groupMain()");
		System.out.println(groupVo);
		
		Map<String, List<GroupVo>> groupMainMap = groupService.getGroupList(groupVo);
		/* System.out.println(groupMainMap); */
		
		model.addAttribute("groupMainMap", groupMainMap);
		return "group/groupMain";
	}
	
	
	
	//지역1 Province 리스트 가져오기
	@ResponseBody
	@RequestMapping(value = "/getListProvinceOnly", method = { RequestMethod.GET, RequestMethod.POST })
	public List<ProvinceVo> getProvinceList() {
		System.out.println("GroupController.getListProvinceOnly()");
		
		List<ProvinceVo> provinceList = groupService.getListProvinceOnly();
		
		return provinceList;
	}
	
	
	/* 지역2 region 리스트 가져오기 */
	@ResponseBody
	@RequestMapping(value = "/getListRegionOnly", method = { RequestMethod.GET, RequestMethod.POST })
	public List<RegionVo> getListRegionOnly(@RequestParam(value="province_no") int province_no) {
		System.out.println("GroupController.getListRegionOnly()");
		System.out.println(province_no);
		List<RegionVo> regionList = groupService.getListRegionOnly(province_no);
		
		return regionList;
	}
	

}
