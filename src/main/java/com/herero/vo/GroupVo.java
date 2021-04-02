package com.herero.vo;

import java.util.List;

/*소모임 생성시 사용*/
/*소모임 리스트 출력시 사용*/

/*소모임 검색시 사용*/

public class GroupVo {

	private int group_no;
	private int province_no;
	private String province;
	private int region_no;
	private String name;
	private int category_no;
	private String category_name;
	private String group_name;
	private String group_url;
	private String content;
	private String founded_date;
	private int member_cnt;
	private String master;
	private String nickname;
	private String joined_date;

	// 이미지 리스트(상세보기일때)
	private List<GImageVo> gImageList;

	// 대표이미지(리스트일때)
	private GImageVo gImageMain;

	/* 검색할때 사용 */
	private String gkeyword;

	public GroupVo() {
	}

	public GroupVo(int group_no, int province_no, String province, int region_no, String name, int category_no,
			String category_name, String group_name, String group_url, String content, String founded_date,
			int member_cnt, String master, String nickname, String joined_date, List<GImageVo> gImageList,
			GImageVo gImageMain, String gkeyword) {
		this.group_no = group_no;
		this.province_no = province_no;
		this.province = province;
		this.region_no = region_no;
		this.name = name;
		this.category_no = category_no;
		this.category_name = category_name;
		this.group_name = group_name;
		this.group_url = group_url;
		this.content = content;
		this.founded_date = founded_date;
		this.member_cnt = member_cnt;
		this.master = master;
		this.nickname = nickname;
		this.joined_date = joined_date;
		this.gImageList = gImageList;
		this.gImageMain = gImageMain;
		this.gkeyword = gkeyword;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public int getProvince_no() {
		return province_no;
	}

	public void setProvince_no(int province_no) {
		this.province_no = province_no;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public int getRegion_no() {
		return region_no;
	}

	public void setRegion_no(int region_no) {
		this.region_no = region_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCategory_no() {
		return category_no;
	}

	public void setCategory_no(int category_no) {
		this.category_no = category_no;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

	public String getGroup_url() {
		return group_url;
	}

	public void setGroup_url(String group_url) {
		this.group_url = group_url;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFounded_date() {
		return founded_date;
	}

	public void setFounded_date(String founded_date) {
		this.founded_date = founded_date;
	}

	public int getMember_cnt() {
		return member_cnt;
	}

	public void setMember_cnt(int member_cnt) {
		this.member_cnt = member_cnt;
	}

	public String getMaster() {
		return master;
	}

	public void setMaster(String master) {
		this.master = master;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getJoined_date() {
		return joined_date;
	}

	public void setJoined_date(String joined_date) {
		this.joined_date = joined_date;
	}

	public List<GImageVo> getgImageList() {
		return gImageList;
	}

	public void setgImageList(List<GImageVo> gImageList) {
		this.gImageList = gImageList;
	}

	public GImageVo getgImageMain() {
		return gImageMain;
	}

	public void setgImageMain(GImageVo gImageMain) {
		this.gImageMain = gImageMain;
	}

	public String getGkeyword() {
		return gkeyword;
	}

	public void setGkeyword(String gkeyword) {
		this.gkeyword = gkeyword;
	}

	@Override
	public String toString() {
		return "GroupVo [group_no=" + group_no + ", province_no=" + province_no + ", province=" + province
				+ ", region_no=" + region_no + ", name=" + name + ", category_no=" + category_no + ", category_name="
				+ category_name + ", group_name=" + group_name + ", group_url=" + group_url + ", content=" + content
				+ ", founded_date=" + founded_date + ", member_cnt=" + member_cnt + ", master=" + master + ", nickname="
				+ nickname + ", joined_date=" + joined_date + ", gImageList=" + gImageList + ", gImageMain="
				+ gImageMain + ", gkeyword=" + gkeyword + "]";
	}

}