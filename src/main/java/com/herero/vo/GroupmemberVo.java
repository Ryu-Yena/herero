package com.herero.vo;

public class GroupmemberVo {
	
	private int groupmember_no;
	private int user_no;
	private int group_no;
	private String nickname;
	private String joined_date;
	
	public GroupmemberVo() {
		super();
	}
	
	

	public GroupmemberVo(int groupmember_no, int user_no, int group_no, String nickname, String joined_date) {
		super();
		this.groupmember_no = groupmember_no;
		this.user_no = user_no;
		this.group_no = group_no;
		this.nickname = nickname;
		this.joined_date = joined_date;
	}



	public int getGroupmember_no() {
		return groupmember_no;
	}

	public void setGroupmember_no(int groupmember_no) {
		this.groupmember_no = groupmember_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
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

	@Override
	public String toString() {
		return "GroupmemberVo [groupmember_no=" + groupmember_no + ", user_no=" + user_no + ", group_no=" + group_no
				+ ", nickname=" + nickname + ", joined_date=" + joined_date + "]";
	}
	
	

}
