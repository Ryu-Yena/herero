package com.herero.sevice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.herero.dao.PlaceDao;
import com.herero.vo.PImageVo;
import com.herero.vo.PlaceVo;
import com.herero.vo.RoomVo;

@Service
public class PlaceService {
	
	@Autowired
	private PlaceDao placeDao;
	
	//대관 메인 리스트
	public List<PlaceVo> getPlaceList() {
		System.out.println("[placeService] getList()");

		return placeDao.selectList();
	}
	
	//대관 상세페이지 읽기
	public PlaceVo getPage(int no) {
		System.out.println("[placeService] placePage()");
		
		System.out.println("======================================");
		//장소정보 가져오기
		PlaceVo placeVo =placeDao.placePage(no);
		
		//룸 리스트 가져오기
		List<RoomVo> roomList = placeDao.roomList(no);
		
		//이미지 리스트 가져오기
		List<PImageVo> imageList = placeDao.imageList(no);
		
		
		//룸 리스트 저장
		placeVo.setRoomList(roomList);
		
		//이미지 리스트 저장
		placeVo.setImageList(imageList);
		
		return placeVo;
	}
	

}
