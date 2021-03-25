package com.herero.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.herero.sevice.PlaceService;
import com.herero.vo.PlaceVo;

@Controller
@RequestMapping(value = "/place")
public class PlaceController {
	
	@Autowired
	private PlaceService placeService;
	
	// 대관메인
	@RequestMapping(value = "/main" , method = {RequestMethod.GET, RequestMethod.POST})
	public String Main(Model model) {
		System.out.println("/place/main");
		
		List<PlaceVo> placeList = placeService.getPlaceList();
		model.addAttribute("placeList", placeList);
		return "place/placeMain";
	}
	
	//대관 상세 페이지
	@RequestMapping(value="/placePage", method = {RequestMethod.GET, RequestMethod.POST})
	public String placePage(@RequestParam("no") int no, Model model) {
		System.out.println("/place/placePage");
		
		PlaceVo placeVo = placeService.getPage(no);
		
		model.addAttribute("placeVo", placeVo);
		System.out.println(placeVo.toString());
		return "place/placePage";
	}
	
	
}
