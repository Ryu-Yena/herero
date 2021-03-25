
--users 테이블 생성
create table users(
    user_no number,
    user_id varchar2(20),
    user_password varchar2(20),
    user_name varchar2(20),
    PRIMARY KEY (user_no)
);

--users 시퀀스 생성
create sequence seq_user_no
increment by 1
start with 1
nocache;

--사업자 회원 
CREATE TABLE business (
	business_no NUMBER NOT NULL, /* 사업자식별번호 */
	business_id VARCHAR2(20) NOT NULL, /* 사업자아이디 */
	business_pw VARCHAR2(20), /* 패스워드 */
	business_owner_name VARCHAR2(20) NOT NULL, /* 사업자이름 */
	business_registered_no NUMBER NOT NULL, /* 사업자번호 */
	business_name VARCHAR2(100), /* 상호명 */
	business_address VARCHAR2(500) /* 주소 */
);

ALTER TABLE business
	ADD
		CONSTRAINT PK_business
		PRIMARY KEY (
			business_no
		);

--business 시퀀스 생성
create sequence seq_business_no
increment by 1
start with 1
nocache;

/* 대관 */
CREATE TABLE place (
	place_no NUMBER NOT NULL, /* 장소식별번호 */
	business_no NUMBER, /* 사업자식별번호 */
	place_name VARCHAR2(100) NOT NULL, /* 장소명 */
	place_address VARCHAR2(500) NOT NULL, /* 주소 */
	place_content VARCHAR2(4000) NOT NULL, /* 장소소개 */
	place_image VARCHAR2(500) NOT NULL, /* 대관이미지 */
	place_category VARCHAR2(500) /* 분류 */
);

ALTER TABLE place
	ADD
		CONSTRAINT PK_place
		PRIMARY KEY (
			place_no
		);

ALTER TABLE place
	ADD
		CONSTRAINT FK_business_TO_place
		FOREIGN KEY (
			business_no
		)
		REFERENCES business (
			business_no
		);

--place 시퀀스 생성
create sequence seq_place_no
increment by 1
start with 1
nocache;

/* 룸 */
CREATE TABLE room (
	room_no NUMBER NOT NULL, /* 룸식별번호 */
	place_no NUMBER, /* 장소식별번호 */
	room_name VARCHAR2(500), /* 이름 */
	room_ppl_number NUMBER, /* 수용인원 */
	room_price NUMBER, /* 가격 */
	room_booked_fee NUMBER /* 예약금 */
);

ALTER TABLE room
	ADD
		CONSTRAINT PK_room
		PRIMARY KEY (
			room_no
		);

ALTER TABLE room
	ADD
		CONSTRAINT FK_place_TO_room
		FOREIGN KEY (
			place_no
		)
		REFERENCES place (
			place_no
		);

--room 시퀀스 생성
create sequence seq_room_no
increment by 1
start with 1
nocache;

/* 시간 */
CREATE TABLE time (
	booked_time_no NUMBER NOT NULL, /* 시간식별번호 */
	room_no NUMBER, /* 룸식별번호 */
	book_no NUMBER, /* 예약식별번호 */
	book_date DATE, /* 날짜 */
	time DATE, /* 시간 */
	time_status VARCHAR2(500) /* 상태 */
);

ALTER TABLE time
	ADD
		CONSTRAINT PK_time
		PRIMARY KEY (
			booked_time_no
		);

ALTER TABLE time
	ADD
		CONSTRAINT FK_room_TO_time
		FOREIGN KEY (
			room_no
		)
		REFERENCES room (
			room_no
		);

ALTER TABLE time
	ADD
		CONSTRAINT FK_reservation_TO_time
		FOREIGN KEY (
			book_no
		)
		REFERENCES reservation (
			book_no
		);
        
--time 시퀀스 생성
create sequence seq_booked_time_no
increment by 1
start with 1
nocache;

/* 예약 */
CREATE TABLE reservation (
	book_no NUMBER NOT NULL, /* 예약식별번호 */
	calendar_no NUMBER, /* 일정식별번호 컬럼명 아래에서 event_no로 수정함*/
	book_date DATE, /* 예약등록일 */
	book_paying_dl DATE, /* 결제마감일 */
	book_status VARCHAR2(500) /* 상태 */
);

ALTER TABLE reservation
	ADD
		CONSTRAINT PK_reservation
		PRIMARY KEY (
			book_no
		);

ALTER TABLE reservation RENAME COLUMN calendar_no to event_no;

ALTER TABLE reservation
	ADD
		CONSTRAINT FK_event_TO_reservation
		FOREIGN KEY (
			event_no
		)
		REFERENCES event (
			event_no
		);
        
--reservation 시퀀스 생성
create sequence seq_book_no
increment by 1
start with 1
nocache;

/* 이벤트 */
CREATE TABLE event (
	event_no NUMBER NOT NULL, /* 일정식별번호 */
	group_no NUMBER, /* 그룹식별번호 */
	event_title VARCHAR2(200), /* 일정이름 */
	event_date DATE, /* 캘린더날짜 */
	event_time DATE, /* 소모임시간 */
	event_deadline DATE, /* 모집마감일 */
	event_content VARCHAR2(200) /* 세부내용 */
);

ALTER TABLE event
	ADD
		CONSTRAINT PK_event
		PRIMARY KEY (
			event_no
		);

ALTER TABLE event
	ADD
		CONSTRAINT FK_group_TO_event
		FOREIGN KEY (
			group_no
		)
		REFERENCES groups (
			group_no
		); --만들어야함
        
--event 시퀀스 생성
create sequence seq_event_no
increment by 1
start with 1
nocache;        
        
/* 카테고리 */
CREATE TABLE category (
	category_no NUMBER NOT NULL, /* 카테고리식별번호 */
	category_name VARCHAR2(200), /* 카테고리명 */
	category_enrolled_date DATE /* 등록일 */
);

ALTER TABLE category
	ADD
		CONSTRAINT PK_category
		PRIMARY KEY (
			category_no
		);

--category 시퀀스 생성
create sequence seq_category_no
increment by 1
start with 1
nocache; 

/* 지역1 */
CREATE TABLE province (
	province_no NUMBER NOT NULL, /* 지역1식별번호 */
	province VARCHAR2(100) /* 이름 */
);

ALTER TABLE province
	ADD
		CONSTRAINT PK_province
		PRIMARY KEY (
			province_no
		);
        
--province 시퀀스 생성
create sequence seq_province_no
increment by 1
start with 1
nocache;
        
/* 지역2 */
CREATE TABLE region (
	region_no NUMBER NOT NULL, /* 지역2식별번호 */
	province_no NUMBER, /* 지역식별번호 */
	name VARCHAR2(100) /* 이름 */
);

ALTER TABLE region
	ADD
		CONSTRAINT PK_region
		PRIMARY KEY (
			region_no
		);

ALTER TABLE region
	ADD
		CONSTRAINT FK_province_TO_region
		FOREIGN KEY (
			province_no
		)
		REFERENCES province (
			province_no
		);

--region 시퀀스 생성
create sequence seq_region_no
increment by 1
start with 1
nocache;

/* 소모임 */
CREATE TABLE groups (
	group_no NUMBER NOT NULL, /* 그룹식별번호 */
	province_no NUMBER, /* 지역1식별번호 */
	region_no NUMBER, /* 지역2식별번호 */
	category_no NUMBER, /* 카테고리식별번호 */
	group_name VARCHAR2(100) NOT NULL, /* 그룹이름 */
	group_url VARCHAR2(500) NOT NULL, /* 그룹주소 */
	group_content VARCHAR2(4000) NOT NULL, /* 그룹설명 */
	founded_date DATE /* 개설일 */
);

ALTER TABLE groups
	ADD
		CONSTRAINT PK_groups
		PRIMARY KEY (
			group_no
		);

ALTER TABLE groups
	ADD
		CONSTRAINT FK_province_TO_groups
		FOREIGN KEY (
			province_no
		)
		REFERENCES province (
			province_no
		);

ALTER TABLE groups
	ADD
		CONSTRAINT FK_region_TO_groups
		FOREIGN KEY (
			region_no
		)
		REFERENCES region (
			region_no
		);

ALTER TABLE groups
	ADD
		CONSTRAINT FK_category_TO_groups
		FOREIGN KEY (
			category_no
		)
		REFERENCES category (
			category_no
		);
        
--groups 시퀀스 생성
create sequence seq_group_no
increment by 1
start with 1
nocache;

/* 소모임 이미지 */
CREATE TABLE image (
	group_image_no NUMBER NOT NULL, /* 소모임이미지식별번호 */
	group_no NUMBER, /* 그룹식별번호 */
	image_name VARCHAR2(200), /* 이미지명 */
	uploaded_time DATE /* 등록시간 */
);

ALTER TABLE image drop COLUMN Group_image_no;
ALTER TABLE image add (group_image_no number);

ALTER TABLE image
	ADD
		CONSTRAINT PK_image
		PRIMARY KEY (
			group_image_no
		);

ALTER TABLE image
	ADD
		CONSTRAINT FK_groups_TO_image
		FOREIGN KEY (
			group_no
		)
		REFERENCES groups (
			group_no
		);
        
--image 시퀀스 생성
create sequence seq_Group_image_no
increment by 1
start with 1
nocache;

/* 소모임 회원 */
CREATE TABLE groupmember (
	groupmember_no NUMBER NOT NULL, /* 소모임회원식별번호 */
	user_no NUMBER, /* 유저식별번호 */
	group_no NUMBER, /* 그룹식별번호 */
	nickname VARCHAR2(100), /* 닉네임 */
	joined_date DATE /* 가입일 */
);

ALTER TABLE groupmember
	ADD
		CONSTRAINT PK_groupmember
		PRIMARY KEY (
			groupmember_no
		);
        
ALTER TABLE groupmember
	ADD
		CONSTRAINT FK_users_TO_groupmember
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE groupmember
	ADD
		CONSTRAINT FK_groups_TO_groupmember
		FOREIGN KEY (
			group_no
		)
		REFERENCES groups (
			group_no
		);
        
--groupmember 시퀀스 생성
create sequence seq_groupmember_no
increment by 1
start with 1
nocache;

/* 이벤트 참여자 */
CREATE TABLE eventmember (
	eventmember_no NUMBER NOT NULL, /* 참여자식별번호 */
	event_no NUMBER, /* 일정식별번호2 */
	groupmember_no NUMBER, /* 소모임회원식별번호 */
	participate VARCHAR2(500), /* 참여여부 */
	enrolled_date DATE, /* 등록날짜 */
	payment_by VARCHAR2(500), /* 결제수단 */
	price NUMBER, /* 결제금액 */
	pay_date DATE, /* 결제일 */
	recieved_person VARCHAR2(100), /* 받는사람 */
	phone_no NUMBER /* 휴대폰 */
);

ALTER TABLE eventmember
	ADD
		CONSTRAINT PK_eventmember
		PRIMARY KEY (
			eventmember_no
		);

ALTER TABLE eventmember
	ADD
		CONSTRAINT FK_event_TO_eventmember
		FOREIGN KEY (
			event_no
		)
		REFERENCES event (
			event_no
		);

ALTER TABLE eventmember
	ADD
		CONSTRAINT FK_groupmember_TO_eventmember
		FOREIGN KEY (
			groupmember_no
		)
		REFERENCES groupmember (
			groupmember_no
		);

--eventmember 시퀀스 생성
create sequence seq_eventmember_no
increment by 1
start with 1
nocache;

/* 게시판 */
CREATE TABLE board (
	board_no NUMBER NOT NULL, /* 게시글식별번호 */
	group_no NUMBER, /* 그룹식별번호 */
	groupmember_no NUMBER, /* 소모임회원식별번호 */
	board_title VARCHAR2(100) NOT NULL, /* 게시글제목 */
	board_hit NUMBER, /* 조회수 */
	board_content VARCHAR2(4000), /* 내용 */
	board_reg_date DATE /* 등록일 */
);

ALTER TABLE board
	ADD
		CONSTRAINT PK_board
		PRIMARY KEY (
			board_no
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_groups_TO_board
		FOREIGN KEY (
			group_no
		)
		REFERENCES groups (
			group_no
		);

ALTER TABLE board
	ADD
		CONSTRAINT FK_groupmember_TO_board
		FOREIGN KEY (
			groupmember_no
		)
		REFERENCES groupmember (
			groupmember_no
		);

--board 시퀀스 생성
create sequence seq_board_no
increment by 1
start with 1
nocache;

/* 즐겨찾기 */
CREATE TABLE favorite (
	favorite_no NUMBER NOT NULL, /* 즐겨찾기식별번호 */
	user_no NUMBER, /* 유저식별번호 */
	group_no NUMBER, /* 그룹식별번호 */
	add_date DATE /* 날짜 */
);

ALTER TABLE favorite
	ADD
		CONSTRAINT PK_favorite
		PRIMARY KEY (
			favorite_no
		);

ALTER TABLE favorite
	ADD
		CONSTRAINT FK_users_TO_favorite
		FOREIGN KEY (
			user_no
		)
		REFERENCES users (
			user_no
		);

ALTER TABLE favorite
	ADD
		CONSTRAINT FK_groups_TO_favorite
		FOREIGN KEY (
			group_no
		)
		REFERENCES groups (
			group_no
		);
        
--favorite 시퀀스 생성
create sequence seq_favorite_no
increment by 1
start with 1
nocache;

/* 장소 이미지 */
CREATE TABLE pImage (
	place_image_no NUMBER NOT NULL, /* 장소이미지식별번호 */
	place_no NUMBER, /* 장소식별번호 */
	image_name VARCHAR2(100), /* 이미지이름 */
	first_image NUMBER, /* 대표이미지 */
	reg_time DATE /* 등록시간 */
);

ALTER TABLE pImage
	ADD
		CONSTRAINT PK_pImage
		PRIMARY KEY (
			place_image_no
		);

ALTER TABLE pImage
	ADD
		CONSTRAINT FK_place_TO_pImage
		FOREIGN KEY (
			place_no
		)
		REFERENCES place (
			place_no
		);

--장소이미지 시퀀스 생성
create sequence seq_pImage_no
increment by 1
start with 1
nocache;

commit;