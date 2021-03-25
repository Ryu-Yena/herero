package com.herero.vo;

public class BoardVo {
	
	private int board_no;
	private int group_no;
	private int groupmember_no;
	private String board_title;
	private int board_hit;
	private String board_content;
	private String board_reg_date;
	
	public BoardVo() {
		super();
	}

	public BoardVo(int board_no, int group_no, int groupmember_no, String board_title, int board_hit,
			String board_content, String board_reg_date) {
		super();
		this.board_no = board_no;
		this.group_no = group_no;
		this.groupmember_no = groupmember_no;
		this.board_title = board_title;
		this.board_hit = board_hit;
		this.board_content = board_content;
		this.board_reg_date = board_reg_date;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public int getGroupmember_no() {
		return groupmember_no;
	}

	public void setGroupmember_no(int groupmember_no) {
		this.groupmember_no = groupmember_no;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public int getBoard_hit() {
		return board_hit;
	}

	public void setBoard_hit(int board_hit) {
		this.board_hit = board_hit;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_reg_date() {
		return board_reg_date;
	}

	public void setBoard_reg_date(String board_reg_date) {
		this.board_reg_date = board_reg_date;
	}

	@Override
	public String toString() {
		return "BoardVo [board_no=" + board_no + ", group_no=" + group_no + ", groupmember_no=" + groupmember_no
				+ ", board_title=" + board_title + ", board_hit=" + board_hit + ", board_content=" + board_content
				+ ", board_reg_date=" + board_reg_date + "]";
	}
	
	

}
