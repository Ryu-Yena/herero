package com.herero.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.herero.sevice.UserService;
import com.herero.vo.UserVo;

@Controller
@RequestMapping(value="/user")
public class UserController {
	
	//필드
	@Autowired
	private UserService userService;
	
	//생성자
	//g.s 생략
	
	//일반 메소드
	
	//로그인 폼
	@RequestMapping(value="/loginForm", method = {RequestMethod.GET,RequestMethod.POST})
	public String loginForm() {
		System.out.println("/user/loginForm");
		
		return "user/loginForm";
	}

	//로그인
	@RequestMapping(value="/login" , method = {RequestMethod.GET, RequestMethod.POST})
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("/user/login");
		System.out.println(userVo.toString());
		
		UserVo authUser = userService.login(userVo);
		
		if(authUser == null) {//로그인 실패
			System.out.println("로그인 실패");
			return "redirect:/user/loginForm?result=fail";
		
		} else {//로그인 성공
			System.out.println("로그인 성공");
			
			session.setAttribute("authUser", authUser);
			return "redirect:/";
		}
	}
	
	//로그아웃
	@RequestMapping(value="/logout" , method = {RequestMethod.GET, RequestMethod.POST})
	public String logout(HttpSession session) {
		System.out.println("/user/logout");
		
		session.removeAttribute("authUser");
		session.invalidate();
		
		return "redirect:/";
	}
	
	
	
	
	
	
	
	//회원가입폼
	@RequestMapping(value="/joinForm" , method = {RequestMethod.GET, RequestMethod.POST})
	public String joinForm() {
		System.out.println("/user/joinForm");
		
		return "user/joinForm";
	}
	
	
	
	//회원가입
	@RequestMapping(value="/join" , method = {RequestMethod.GET, RequestMethod.POST})
	public String join() {
		System.out.println("/user/join");
		
		return "";
	}
	
}
