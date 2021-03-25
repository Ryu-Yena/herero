package com.herero.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/group")
public class GroupController {
	
	//필드
	
	//생성자
	//g.s 생략
	
	//일반 메소드
	
	//그룹가입 
	@RequestMapping(value="/groupForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String groupForm() {
		System.out.println("/group/groupForm");
		
		return "group/groupForm";
		
	}
	
	//소모임 메인
	@RequestMapping(value="/groupMain", method = {RequestMethod.GET,RequestMethod.POST})
	public String groupMain() {
		System.out.println("/group/groupMain");
		
		return "group/groupMain";
	}

	//그룹 상세 (비그룹원)
	@RequestMapping(value = "/groupHome", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupHome() {
		System.out.println("/group/groupHome");

		return "group/groupHome";

	}
	
	//그룹 상세 (그룹원 전용)
	@RequestMapping(value = "/groupHome2", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupHome2() {
		System.out.println("/group/groupHome2");

		return "group/groupHome2";

	}
	
	//그룹 이벤트(일정) 생성
	@RequestMapping(value= "/groupEventForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String groupEventForm() {
		System.out.println("/group/groupEventForm");
		
		return "group/groupEventForm";
	}

	//그룹 이벤트(일정) 참가
		@RequestMapping(value= "/groupEventJoin", method = {RequestMethod.GET, RequestMethod.POST})
		public String groupEventJoin() {
			System.out.println("/group/groupEventJoin");
			
			return "group/groupEventJoin";
		}
		
	//그룹 이벤트(일정) 참가
	@RequestMapping(value= "/groupEventPay", method = {RequestMethod.GET, RequestMethod.POST})
	public String groupEventPay() {
		System.out.println("/group/groupEventPay");
		
		return "group/groupEventPay";
	}
	
}
