package com.herero.sevice;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.herero.dao.GroupDao;
import com.herero.vo.CategoryVo;
import com.herero.vo.EventVo;
import com.herero.vo.GImageVo;
import com.herero.vo.GroupVo;
import com.herero.vo.GroupmemberVo;
import com.herero.vo.ProvinceVo;
import com.herero.vo.RegionVo;

@Service
public class GroupService {


	@Autowired
	private GroupDao groupDao;
	
	/* 소모임 위치 리스트 가져오기 */
	public List<ProvinceVo> getProvinceList(String pKeyword){
		System.out.println("[GroupService.getProvinceList()]");
		
		return groupDao.selectListProvince(pKeyword);
	}
	
	/* 소모임 관심사 리스트 가져오기 */
	public List<CategoryVo> getCategoryList(){
		System.out.println("[GroupService.getCategoryList()]");
		
		return groupDao.selectListCategory();
	}
	
	/* 소모임(그룹)명 중복체크 */
	public Map<String, Integer> groupNameCheck(String group_name){
		System.out.println("[GroupService.groupNameCheck()]");
		Map<String, Integer> resultMap = new HashMap<String, Integer>();
		
		int cnt = groupDao.selectCntByGroupName(group_name);
		resultMap.put("result", cnt);
		
		return resultMap;
		
	}
	
	/* 소모임(url)명 중복체크 */
	public Map<String, Integer> groupUrlCheck(String group_url){
		System.out.println("[GroupService.groupUrlCheck()]");
		Map<String, Integer> resultMap = new HashMap<String, Integer>();
		
		int cnt = groupDao.selectCntByGroupUrl(group_url);
		resultMap.put("result", cnt);
		
		return resultMap;
		
	}
	
	
	/* 소모임 만들기 */
	public void addGroup(GroupVo groupVo, int mainImg, MultipartFile[] files, int userNo){
		System.out.println("[GroupService.addGroup()]");
		
		//소모임 데이터 저장
		groupDao.insertGroup(groupVo);
		
		//소모임장 등록
		GroupmemberVo groupMemberVo = new GroupmemberVo(userNo, groupVo.getGroup_no(), "운영자", "0");
		groupDao.insertGroupMember(groupMemberVo);
		
		
		//실제파일 저장경로
		String saveDir = "C:\\javaStudy\\hereroImg"; 
		
		for(int i=0; i<files.length; i++) {
			//원파일이름
			String orgName = files[i].getOriginalFilename();
			
			//파일 없으면 저장하지 않는다
			if(orgName != null && !orgName.equals("")) {
				//확장자
				String exName = files[i].getOriginalFilename().substring(files[i].getOriginalFilename().lastIndexOf("."));
				System.out.println("exName:" + exName);
				
				//-저장파일이름
				String saveName = System.currentTimeMillis() + UUID.randomUUID().toString() + exName;
				System.out.println("saveName:" + saveName);
				
				//-파일패스 생성(
				String filePath = saveDir + "\\" + saveName;
				System.out.println("filePath:" + filePath);
				
				//파일 사이즈
				long fileSize = files[i].getSize();
				System.out.println("fileSize:" + fileSize);
				
				//*파일업로드(복사)
				try {
					byte[] fileData = files[i].getBytes();
					OutputStream out = new FileOutputStream( filePath );
					BufferedOutputStream bout = new BufferedOutputStream(out);
					
					bout.write( fileData );
					
					if (bout != null) {
						bout.close();
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
				
				//소모임(그룹)이미지 저장
				int group_no = groupVo.getGroup_no();
				String image_name = saveName;
				
				if(mainImg == i) {
					GImageVo gImageVo = new GImageVo(group_no, image_name, "main");
					groupDao.insertGroupImage(gImageVo);
				}else {
					GImageVo  gImageVo = new GImageVo(group_no, image_name, "");
					groupDao.insertGroupImage(gImageVo);
				}
				
			}
			
		}
		
		
	}
	
	
	
	/* 소모임 전체 리스트 */
	public Map<String, List<GroupVo>> getGroupList(GroupVo groupVo){
		System.out.println("[GroupService.getGroupList()]");
		
		//일반리스트 + 검색어 + 페이징
		List<GroupVo> groupList = groupDao.selectGroupList(groupVo);
		for(int i=0; i<groupList.size(); i++) {
			int group_no = groupList.get(i).getGroup_no();
			groupList.get(i).setgImageMain(groupDao.selectGImageMain(group_no));
		}
		
		//추천(가입자수)리스트
		List<GroupVo> rcmdGroupList = groupDao.selectRcmdGroupList();
		for(int i=0; i<rcmdGroupList.size(); i++) {
			int group_no = rcmdGroupList.get(i).getGroup_no();
			rcmdGroupList.get(i).setgImageMain(groupDao.selectGImageMain(group_no));
		}
		
		//최신 리스트 최신글 2개
		List<GroupVo> lastlyGroupList = groupDao.selectLastlyGroupList(1, 2);  //최신글 1번부터 2번까지
		for(int i=0; i<lastlyGroupList.size(); i++) {
			int group_no = lastlyGroupList.get(i).getGroup_no();
			lastlyGroupList.get(i).setgImageMain(groupDao.selectGImageMain(group_no));
		}
		
		
		Map<String, List<GroupVo>> groupMainMap = new HashMap<String, List<GroupVo>>(); 
		groupMainMap.put("lastlyGroupList", lastlyGroupList);
		groupMainMap.put("rcmdGroupList", rcmdGroupList);
		groupMainMap.put("groupList", groupList);
		
		return groupMainMap;
	}
	

	
	/* 지역1 Province 리스트 가져오기 */
	public List<ProvinceVo> getListProvinceOnly(){
		System.out.println("[GroupService.selectListProvinceOnly()]");
		
		return groupDao.selectListProvinceOnly();
	}
	
	/* 지역2 region 리스트 가져오기 */
	public List<RegionVo> getListRegionOnly(int province_no){
		System.out.println("[GroupService.getListRegionOnly()]");
		
		return groupDao.selectListRegionOnly(province_no);
	}
	
	/* 소모임 상세페이지 가져오기 */
	public GroupVo getGHome(int group_no) {
		System.out.println("[groupService] getGHome");
		
		//그룹상세 정보 가져오기
		GroupVo groupVo = groupDao.groupHome(group_no);
		
		//그룹의 이미지리스트 가져오기
		List<GImageVo> gImageList =  groupDao.selectListGImage(group_no);
		groupVo.setgImageList(gImageList); //vo에 이미지 리스트를 추가한다.
		
		return groupVo;
	}
	
	/* 소모임 그룹맴버 정보 가져오기 */
	public GroupmemberVo getgMember(int no, int authUserNo) {
		System.out.println("[groupService] getgMember");
		
		return groupDao.selectGMember(no, authUserNo);
	}
	
	
	
	
	
	/* 이벤트등록 운영자 직접등록*/
	public void addEvent(EventVo eventVo) {
		System.out.println("[groupService] addEvent()");
		groupDao.insertEvent(eventVo);
	}
	
	//이벤트 리스트 가져오기
	public List<EventVo> getListEvent(int group_no) {
		System.out.println("[groupService] getListEvent()");
		return groupDao.selectListEvent(group_no);
	}
	
	
	/* 미팅 등록 */
	public int addMeeting(EventVo eventVo) {
		System.out.println("[groupService] addMeeting()");
		
		return groupDao.insertMeeting(eventVo);
	}
	
	//미팅 리스트 가져오기
	public List<EventVo> getListMeeting(int group_no){
		System.out.println("[groupService] getListMeeting()");
		
		return groupDao.selectListMeeting(group_no);
	}
	
	
	
	/* 메인페이지하단 최신글 4개 가져오기 */
	public List<GroupVo> getLastlyGroupList() {
		System.out.println("[groupService] getLastlyGroupList()");
		
		List<GroupVo> lastlyGroupList = groupDao.selectLastlyGroupList(1, 4);  //최신글 1번부터 2번까지
		for(int i=0; i<lastlyGroupList.size(); i++) {
			int group_no = lastlyGroupList.get(i).getGroup_no();
			lastlyGroupList.get(i).setgImageMain(groupDao.selectGImageMain(group_no));
		}
		
		return lastlyGroupList;
		
	}
	
	
	
	// 소모임 가입
	public String groupJoin(GroupmemberVo groupmemberVo) {
		System.out.println("[groupService] groupJoin()");
		System.out.println(groupmemberVo);
		
		groupmemberVo.setMaster("1");  //일반회원 표시
		
		groupDao.insertGroupMember(groupmemberVo);
		
		return "event/groupEventPay";
	}
	
}
