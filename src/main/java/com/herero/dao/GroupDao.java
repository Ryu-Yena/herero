package com.herero.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.herero.vo.CategoryVo;
import com.herero.vo.EventVo;
import com.herero.vo.GImageVo;
import com.herero.vo.GroupVo;
import com.herero.vo.GroupmemberVo;
import com.herero.vo.ProvinceVo;
import com.herero.vo.RegionVo;

@Repository
public class GroupDao {

	@Autowired
	private SqlSession sqlSession;
	
	/* 소모임 위치 리스트 가져오기 */
	public List<ProvinceVo> selectListProvince(String pKeyword){
		System.out.println("[GroupDao.selectListProvince()]");
		
		return sqlSession.selectList("group.selectListProvince", pKeyword);
	}
	
	
	/* 소모임 관심사 리스트 가져오기 */
	public List<CategoryVo> selectListCategory(){
		System.out.println("[GroupDao.selectListCategory()]");
		
		return sqlSession.selectList("group.selectListCategory");
	}
	
	
	/* 소모임(그룹)명 중복체크 */
	public int selectCntByGroupName(String group_name){
		System.out.println("[GroupDao.selectCntByGroupName()]");
		
		return sqlSession.selectOne("group.selectCntByGroupName", group_name);
	}
	
	
	/* 소모임(url)명 중복체크 */
	public int selectCntByGroupUrl(String group_url){
		System.out.println("[GroupDao.selectCntByGroupUrl()]");
		
		return sqlSession.selectOne("group.selectCntByGroupName", group_url);
	}
	
	
	/* 소모임 생성 */
	public int insertGroup(GroupVo groupVo){
		System.out.println("[GroupDao.insertGroup()]");
		
		return sqlSession.insert("group.insertGroup", groupVo);
	}
	
	/* 소모임 이미지 저장 */
	public int insertGroupImage(GImageVo gImageVo){
		System.out.println("[GroupDao.insertGroupImage()]");
		
		return sqlSession.insert("group.insertGroupImage", gImageVo);
	}
	
	/* 소모임 회원 저장 */
	public int insertGroupMember(GroupmemberVo groupMemberVo) {
		System.out.println("[GroupDao.insertGroupMember()]");
		
		return sqlSession.insert("group.insertGroupMember", groupMemberVo);
	}
	
	
	
	
	/* 소모임 전체 리스트 */
	public List<GroupVo> selectGroupList(GroupVo groupVo){
		System.out.println("[GroupDao.selectGroupList()]");
		
		return sqlSession.selectList("group.selectGroupList", groupVo);
	}
	
	/* 소모임별 이미지 리스트 가져오기 */
	public List<GImageVo> selectListGImage(int group_no){
		System.out.println("[GroupDao.selectListGImage()]");
		
		return sqlSession.selectList("group.selectListGImage", group_no);
	}
	
	
	/* 소모임별 대표 이미지 가져오기 */
	public GImageVo selectGImageMain(int group_no){
		System.out.println("[GroupDao.selectGImageMain()]");
		
		return sqlSession.selectOne("group.selectGImageMain", group_no);
	}
	
	
	
	/* 소모임 추천(가입자수)리스트 */
	public List<GroupVo> selectRcmdGroupList(){
		System.out.println("[GroupDao.selectRcmdGroupList()]");
		
		return sqlSession.selectList("group.selectRcmdGroupList");
	}
	
	/* 소모임 최신리스트 */
	public List<GroupVo> selectLastlyGroupList(){
		System.out.println("[GroupDao.selectLastlyGroupList()]");
		
		return sqlSession.selectList("group.selectLastlyGroupList");
	}
	
	
	
	
	/* 지역1 Province 리스트 가져오기 */
	public List<ProvinceVo> selectListProvinceOnly(){
		System.out.println("[GroupDao.selectListProvinceOnly()]");
		
		return sqlSession.selectList("group.selectListProvinceOnly");
	}
	
	/* 지역2 region 리스트 가져오기 */
	public List<RegionVo> selectListRegionOnly(int province_no){
		System.out.println("[GroupDao.selectListRegionOnly()]");
		
		return sqlSession.selectList("group.selectListRegionOnly", province_no);
	}
	
	/*소모임별 정보가져오기*/
	public GroupVo groupHome(int no) {
		System.out.println("[groupDao] groupHome");
		
		return sqlSession.selectOne("group.selectGroup", no);
	}
	
	/* 소모임 정보 가져오기 */
	public GroupmemberVo selectGMember(int no, int authUserNo) {
		System.out.println("[groupDao] selectGMember");
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("groupNo", no);
		map.put("authUserNo", authUserNo);
		return sqlSession.selectOne("group.selectGMember", map);
	}
	
	
	/* 이벤트등록 */
	public void insertEvent(EventVo eventVo) {
		System.out.println("[groupDao] insertEvent()");
		
	}
	
	/* 이벤트등록 */
	public void insertMeeting(EventVo eventVo) {
		System.out.println("[groupDao] insertMeeting()");
		System.out.println(eventVo);
		
	}
	
}
