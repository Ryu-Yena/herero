package com.herero.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

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
import com.herero.vo.GroupmemberVo;
import com.herero.vo.UserVo;

@Controller
@RequestMapping(value = "/group")
public class GroupController {

	@Autowired
	private GroupService groupService;

	// 그룹 상세 (비그룹원)
	@RequestMapping(value = "/groupHome", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupHome(@RequestParam("no") int no, Model model, HttpSession session, UserVo userVo, GroupmemberVo groupMemberVo) {
		System.out.println("/group/groupHome");
		
		//세션 정보 가져오기
		UserVo authUser= (UserVo)session.getAttribute("authUser");
		
			
		//session null이면 > grouphome 보이고
		//session이 있으면 > 로그인 된 상태
		if(authUser == null) {
			System.out.println("로그인 안된 상태");
			
			return "redirect:/user/loginForm";
		} else {//그룹넘버 꺼내고 -> 회원식별번호 받아오고 -> DB에 조회
			System.out.println("로그인된 회원");
			
			//세션 user_no 가져오기
			int authUserNo = authUser.getUser_no();
			
			
			//그룹 회원정보 가져오기
			GroupmemberVo groupmemberVo = groupService.getgMember(no,authUserNo);
			
			if(groupmemberVo == null) {//2. 없으면 > grouphome 보내기3
				System.out.println("가입 전 회원");
				
				GroupVo groupVo = groupService.getGHome(no);
				
				model.addAttribute("groupVo", groupVo);
				System.out.println(groupVo.toString());
				
				return "group/groupHome";
				
			}else {//1. 있으면 > grouphome2 보내고
				System.out.println("소모임 회원");
				
				GroupVo groupVo = groupService.getGHome(no);
				
				model.addAttribute("groupVo", groupVo);
				System.out.println(groupVo.toString());
				return "group/groupHome2";
			}
		}
	
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
	
	
	

	// 그룹 상세 (그룹원 전용) 캘린더 화면
	@RequestMapping(value = "/groupHome2", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupHome2() {
		System.out.println("/group/groupHome2");

		return "group/groupHome2";

	}
	
	
	
	// 그룹 이벤트(일정) 게시판
	@RequestMapping(value = "/eventBoard", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventBoard() {
		System.out.println("/group/eventBoard");

		return "event/eventBoard";
	}

	
	// 그룹 이벤트(일정) 게시판읽기
	@RequestMapping(value = "/eventRead", method = { RequestMethod.GET, RequestMethod.POST })
	public String eventRead() {
		System.out.println("/group/eventRead");

		return "event/eventRead";
	}
	
	
	// 이벤트 등록
	@RequestMapping(value = "/addMeeting", method = { RequestMethod.GET, RequestMethod.POST })
	public String addMeeting(@ModelAttribute EventVo eventVo) {
		System.out.println("/group/addMeeting");

		System.out.println(eventVo);

		groupService.addMeeting(eventVo);

		return "redirect:/event/eventBoard";
	}
	
	
	
	
	
	// 그룹 이벤트(일정) 참가
	@RequestMapping(value = "/groupEventForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventForm() {
		System.out.println("/group/groupEventForm");
		
		
		//그룹넘버 넘기기 > 세션이랑 

		return "event/groupEventForm";
	}
	
	
	// 그룹 이벤트(일정) 참가
	@RequestMapping(value = "/groupEventJoin", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventJoin() {
		System.out.println("/group/groupEventJoin");

		return "event/groupEventJoin";
	}

	// 그룹 이벤트(일정) 참가
	@RequestMapping(value = "/groupEventPay", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventPay() {
		System.out.println("/group/groupEventPay");

		return "event/groupEventPay";
	}

}
