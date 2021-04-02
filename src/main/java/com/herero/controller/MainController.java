package com.herero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.herero.sevice.GroupService;
import com.herero.vo.GroupVo;

@Controller
public class MainController {
	
	@Autowired
	private GroupService groupService;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String main(Model model) {
		System.out.println("Herro main");
		
		//메인페이지의 최신 소모임 리스트 4개 정보를 가져온다.
		List<GroupVo> lastlyGroupList = groupService.getLastlyGroupList();
		
		model.addAttribute("lastlyGroupList", lastlyGroupList);
		
		return "main/index";
	}

}