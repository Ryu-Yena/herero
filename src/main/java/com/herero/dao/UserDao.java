package com.herero.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.herero.vo.UserVo;

@Repository
public class UserDao {

	@Autowired
	private SqlSession sqlSession;
	
	//로그인
	public UserVo selectUser(UserVo userVo) {
		System.out.println("userDao : selectUser()");
		System.out.println(userVo.toString());
		
		return sqlSession.selectOne("user.selectUser", userVo);
	}
}
