package com.herero.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.herero.dao.PlaceDao;
import com.herero.vo.PlaceVo;

@Service
public class PlaceService {
	
	@Autowired
	private PlaceDao placeDao;
	
	//대관 메인 리스트
	public List<PlaceVo> getPlaceList() {
		System.out.println("[placeService] getList()");

		return placeDao.selectList();
	}
	
	//게시글 읽기
	public PlaceVo getPage(int no) {
		System.out.println("[placeService] placePage()");

		return placeDao.placePage(no);
	}
	

}
