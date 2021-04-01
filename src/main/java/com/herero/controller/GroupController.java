package com.herero.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.herero.sevice.GroupService;
import com.herero.vo.EventVo;
import com.herero.vo.GroupVo;

@Controller
@RequestMapping(value = "/group")
public class GroupController {

	@Autowired
	private GroupService groupService;

	// 그룹 상세 (비그룹원)
	@RequestMapping(value = "/groupHome", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupHome(@RequestParam("no") int no, Model model) {
		System.out.println("/group/groupHome");
		
		GroupVo groupVo = groupService.getGHome(no);
		
		model.addAttribute("groupVo", groupVo);
		System.out.println(groupVo.toString());

		return "group/groupHome";

	}
	
	
	
	
	// 이벤트리스트 가져오기
	@ResponseBody
	@RequestMapping(value="/getEventList", method = {RequestMethod.GET, RequestMethod.POST})
	public List<EventVo> writeEvent() {
		System.out.println("getEventList");
		
		
		List<EventVo> eventList = new ArrayList<EventVo>();
		
		for(int i=1; i<10; i++) {
			EventVo vo = new EventVo();
			vo.setTitle("이벤트"+i);
			vo.setStart("2021-03-0"+i);
			eventList.add(vo);
		}
		
		
		
		
		System.out.println(eventList);
		return eventList;
	}
	
	
	// 이벤트 등록
	@RequestMapping(value="/addEvent", method = {RequestMethod.GET, RequestMethod.POST})
	public String addEvent(@ModelAttribute EventVo eventVo) {
		System.out.println("/group/addEvent");
		
		System.out.println(eventVo);
		
		groupService.addEvent(eventVo);
		
		return "redirect:/group/groupHome2";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

	// 그룹 상세 (그룹원 전용)
	@RequestMapping(value = "/groupHome2", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupHome2() {
		System.out.println("/group/groupHome2");

		return "group/groupHome2";

	}

	// 그룹 이벤트(일정) 생성
	@RequestMapping(value = "/groupEventForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventForm() {
		System.out.println("/group/groupEventForm");

		return "group/groupEventForm";
	}

	// 그룹 이벤트(일정) 참가
	@RequestMapping(value = "/groupEventJoin", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventJoin() {
		System.out.println("/group/groupEventJoin");

		return "group/groupEventJoin";
	}

	// 그룹 이벤트(일정) 참가
	@RequestMapping(value = "/groupEventPay", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventPay() {
		System.out.println("/group/groupEventPay");

		return "group/groupEventPay";
	}

}
