package com.herero.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.herero.vo.PImageVo;
import com.herero.vo.PlaceVo;
import com.herero.vo.RoomVo;

@Repository
public class PlaceDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//대관리스트
	public List<PlaceVo> selectList(){
		System.out.println("[placeDao] selectList()");
		System.out.println(sqlSession.selectList("place.selectList"));
		return sqlSession.selectList("place.selectList");
	}
	
	//대관 상세페이지 place 정보
	public PlaceVo placePage(int no) {
		System.out.println("[placeDao] placePage()");
		return sqlSession.selectOne("place.selectPlace", no);
	}
	
	//대관 상세페이지 room정보
	public List<RoomVo> roomList(int no){
		System.out.println("[placeDao] roomList()");
		return sqlSession.selectList("place.selectRoom", no);
	}
	
	//대관 상세페이지 image정보
	public List<PImageVo> imageList(int no){
		System.out.println("[placeDao] imageList");
		return sqlSession.selectList("place.selectImage", no);
	}

}
