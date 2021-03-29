--회원가입
insert into users values (seq_user_no.nextval, 'a', 'a', '강호동');
insert into users values (seq_user_no.nextval, 'b', 'b', '이정재');
insert into users values (seq_user_no.nextval, 'c', 'c', '전소민');
insert into users values (seq_user_no.nextval, 'd', 'd', '지석진');
insert into users values (seq_user_no.nextval, 'e', 'e', '정우성');
insert into users values (seq_user_no.nextval, 'f', 'f', '김종국');
insert into users values (seq_user_no.nextval, 'g', 'g', '이효리');
insert into users values (seq_user_no.nextval, 'h', 'h', '이광수');
insert into users values (seq_user_no.nextval, 'i', 'i', '박명수');
insert into users values (seq_user_no.nextval, 'j', 'j', '송지효');
insert into users values (seq_user_no.nextval, 'k', 'k', '양세찬');
insert into users values (seq_user_no.nextval, 'l', 'l', '유재석');
commit

--그룹가입
--강호동 a b c 반가입
insert into groupmember values (seq_groupmember_no.nextval, '3', 13, '강호동a', sysdate);
insert into groupmember values (seq_groupmember_no.nextval, '3', 14, '강호동b', sysdate);
insert into groupmember values (seq_groupmember_no.nextval, '3', 15, '강호동c', sysdate);  

--이정재 a b 반가입
insert into groupmember values (seq_groupmember_no.nextval, '4', 13, '이정재a', sysdate);
insert into groupmember values (seq_groupmember_no.nextval, '4', 14, '이정재b', sysdate);

--전소민 b 반가입
insert into groupmember values (seq_groupmember_no.nextval, '5', 14, '전소민b', sysdate);


--일반글
select gtbl.group_no,
       gtbl.province_no,
       gtbl.province,
       gtbl.region_no,
       gtbl.name,
       gtbl.category_no,
       gtbl.category_name,
       gtbl.group_name,
       gtbl.group_url,
       gtbl.group_content content,
       gtbl.founded_date,
       ctbl.member_cnt
from(select gs.group_no,
            gs.province_no,
            pv.province,
            gs.region_no,
            rg.name,
            gs.category_no,
            ct.category_name,
            gs.group_name,
            gs.group_url,
            gs.group_content,
            gs.founded_date
      from groups gs, province pv, region rg, category ct
      where gs.province_no = pv.province_no
      and gs.region_no = rg.region_no
      and gs.category_no = ct.category_no) gtbl
      ,
     (select group_no, count(*) member_cnt
      from groupmember
      group by group_no) ctbl
where gtbl.group_no = ctbl.group_no(+)
order by gtbl.founded_date desc;


--일반글2
select  rt.rn,
        rt.group_no,
        rt.province_no,
        rt.province,
        rt.region_no,
        rt.name,
        rt.category_no,
        rt.category_name,
        rt.group_name,
        rt.group_url,
        rt.content,
        rt.founded_date,
        rt.member_cnt
from(select rownum rn,
            ot.group_no,
            ot.province_no,
            ot.province,
            ot.region_no,
            ot.name,
            ot.category_no,
            ot.category_name,
            ot.group_name,
            ot.group_url,
            ot.content,
            ot.founded_date,
            ot.member_cnt
     from (select gtbl.group_no,
                  gtbl.province_no,
                  gtbl.province,
                  gtbl.region_no,
                  gtbl.name,
                  gtbl.category_no,
                  gtbl.category_name,
                  gtbl.group_name,
                  gtbl.group_url,
                  gtbl.group_content content,
                  gtbl.founded_date,
                  NVL(ctbl.member_cnt, 0) member_cnt
            from(select gs.group_no,
                        gs.province_no,
                        pv.province,
                        gs.region_no,
                        rg.name,
                        gs.category_no,
                        ct.category_name,
                        gs.group_name,
                        gs.group_url,
                        gs.group_content,
                        gs.founded_date				
                 from groups gs, province pv, region rg, category ct
                 where gs.province_no = pv.province_no
                 and gs.region_no = rg.region_no
                 and gs.category_no = ct.category_no) gtbl
                 ,
                (select group_no, count(*) member_cnt
                 from groupmember
                 group by group_no) ctbl
            where gtbl.group_no = ctbl.group_no(+)
            order by gtbl.founded_date desc ) ot
     ) rt 
where rt.rn >=1
and   rt.rn <=10
and   rt.province_no = 1
and   rt.region_no = 231
and   rt.member_cnt <= 2
and   rt.group_name like '%a%'; 


--추천글 맴버 많은순
select  rt.rn,
        rt.group_no,
        rt.province_no,
        rt.province,
        rt.region_no,
        rt.name,
        rt.category_no,
        rt.category_name,
        rt.group_name,
        rt.group_url,
        rt.content,
        rt.founded_date,
        rt.member_cnt
from(select rownum rn,
            ot.group_no,
            ot.province_no,
            ot.province,
            ot.region_no,
            ot.name,
            ot.category_no,
            ot.category_name,
            ot.group_name,
            ot.group_url,
            ot.content,
            ot.founded_date,
            ot.member_cnt
     from (select gtbl.group_no,
                  gtbl.province_no,
                  gtbl.province,
                  gtbl.region_no,
                  gtbl.name,
                  gtbl.category_no,
                  gtbl.category_name,
                  gtbl.group_name,
                  gtbl.group_url,
                  gtbl.group_content content,
                  gtbl.founded_date,
                  NVL(ctbl.member_cnt, 0) member_cnt
            from(select gs.group_no,
                        gs.province_no,
                        pv.province,
                        gs.region_no,
                        rg.name,
                        gs.category_no,
                        ct.category_name,
                        gs.group_name,
                        gs.group_url,
                        gs.group_content,
                        gs.founded_date				
                 from groups gs, province pv, region rg, category ct
                 where gs.province_no = pv.province_no
                 and gs.region_no = rg.region_no
                 and gs.category_no = ct.category_no) gtbl
                 ,
                (select group_no, count(*) member_cnt
                 from groupmember
                 group by group_no) ctbl
            where gtbl.group_no = ctbl.group_no(+)
            order by member_cnt desc ) ot
     ) rt 
where rt.rn >=1
and   rt.rn <=2;


--province 리스트
select  province_no,
        province
from province
order by province_no;

--region 리스트
select  region_no,
        province_no,
        name
from region
where province_no = 1
order by region_no;

--그룹별 이미지 구하기
select  group_image_no,
        group_no,
        image_name,
        uploaded_time,
        mainImg
from gImage
where group_no = 13
order by uploaded_time asc;



select  group_image_no,
        group_no,
        image_name,
        uploaded_time,
        mainImg
from gImage
where group_no = 13
and mainImg = 'main'
	

            

