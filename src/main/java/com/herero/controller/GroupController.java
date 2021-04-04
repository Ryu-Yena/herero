package com.herero.controller;

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
	public String groupHome(@RequestParam("no") int no, Model model, HttpSession session, GroupmemberVo groupMemberVo) {
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
				System.out.println(groupVo.toString());
				model.addAttribute("groupVo", groupVo);
				
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
	
	//* 이벤트등록 운영자 직접등록*/
	@RequestMapping(value="/addEvent", method = {RequestMethod.GET, RequestMethod.POST})
	public String addEvent(@ModelAttribute EventVo eventVo) {
		System.out.println("/group/addEvent");
		
		groupService.addEvent(eventVo);
		
		return "redirect:/group/groupHome?no="+eventVo.getGroup_no();
	}
	
	// 이벤트리스트 가져오기
	@ResponseBody
	@RequestMapping(value="/getEventList", method = {RequestMethod.GET, RequestMethod.POST})
	public List<EventVo> getEventList(@RequestParam("no") int no) {
		System.out.println("getEventList");
		
		return groupService.getListEvent(no);
	}
	
	
	/* 이벤트등록 시스템등록*/
	@RequestMapping(value = "/addMeeting", method = { RequestMethod.GET, RequestMethod.POST })
	public String addMeeting(@ModelAttribute EventVo eventVo, Model model) {
		System.out.println("/group/addMeeting");
		System.out.println(eventVo);
		
		groupService.addMeeting(eventVo);

		return "redirect:/group/meetList?no="+eventVo.getGroup_no();
	}
	
	
	// 그룹 미팅일정 게시판
	@RequestMapping(value = "/meetList", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventBoard(@RequestParam("no") int no, Model model) {
		System.out.println("/group/meetList");
		
		GroupVo groupVo = groupService.getGHome(no);
		List<EventVo> meetingList = groupService.getListMeeting(no);
		
		model.addAttribute("groupVo", groupVo);
		model.addAttribute("meetingList", meetingList);
		
		System.out.println(meetingList.toString());

		return "event/eventBoard";
	}
	
	// 그룹 미팅일정 폼
	@RequestMapping(value = "/meetForm", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupEventForm(@RequestParam("no") int no, Model model) {
		System.out.println("/group/meetForm");
		
		//그룹넘버 넘기기 > 세션이랑 
		
		
		GroupVo groupVo = groupService.getGHome(no);
		model.addAttribute("groupVo", groupVo);
		

		return "event/groupEventForm";
	}

	
	// 그룹 이벤트(일정) 게시판읽기
	@RequestMapping(value = "/eventRead", method = { RequestMethod.GET, RequestMethod.POST })
	public String eventRead() {
		System.out.println("/group/eventRead");

		return "event/eventRead";
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

	
	// 소모임 가입
	@RequestMapping(value = "/groupJoin", method = { RequestMethod.GET, RequestMethod.POST })
	public String groupJoin(@ModelAttribute GroupmemberVo groupmemberVo, HttpSession session) {
		System.out.println("/group/groupJoin");
		System.out.println(groupmemberVo);
		//세션 정보 가져오기
		UserVo authUser= (UserVo)session.getAttribute("authUser");
		
		if(authUser == null) {
			System.out.println("로그인 안된 상태");
			
			return "redirect:/user/loginForm";
		} else {
			//세션에 있는(로그인한 사용자) user_no를 넣어준다
			groupmemberVo.setUser_no(authUser.getUser_no()); 
			
			groupService.groupJoin(groupmemberVo);
			return "redirect:/group/groupHome?no="+groupmemberVo.getGroup_no();
		}
		
	}
	
}
