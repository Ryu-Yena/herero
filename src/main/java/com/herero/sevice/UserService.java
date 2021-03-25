package com.herero.sevice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.herero.dao.UserDao;
import com.herero.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	//로그인
	public UserVo login(UserVo userVo) {
		System.out.println("UserService : login()");
		
		return userDao.selectUser(userVo);
	}
		
}
