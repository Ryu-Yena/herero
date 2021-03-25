package com.herero.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.herero.vo.PlaceVo;

@Repository
public class PlaceDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//대관리스트
	public List<PlaceVo> selectList(){
		System.out.println("[placeDao] selectList()");
		return sqlSession.selectList("place.selectList");
	}
	
	//대관 상세페이지 읽어오기
	public PlaceVo placePage(int no) {
		System.out.println("[placeDao] placeSelectOne()");
		return sqlSession.selectOne("place.selectOne", no);
	}

}
