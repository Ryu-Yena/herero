insert into room
values(SEQ_ROOM_NO.nextval,1,'세미나실',6,20000,2000);

insert into room
values(SEQ_ROOM_NO.nextval,6,'세미나실2',8,60000,6000);


--placeNo =1 image
insert into pimage
values(SEQ_PIMAGE_NO.nextval,1,'place01+01.jpg',1,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,1,'place01+02.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,1,'place01+03.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,1,'place01+04.jpg',0,sysdate);

--placeNo =6 image
insert into pimage
values(SEQ_PIMAGE_NO.nextval,6,'place02+01.jpg',1,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,6,'place02+02.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,6,'place02+03.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,6,'place02+04.jpg',0,sysdate);


--placeNo =7 image
insert into pimage
values(SEQ_PIMAGE_NO.nextval,7,'place03+01.jpg',1,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,7,'place03+02.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,7,'place03+03.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,7,'place03+04.jpg',0,sysdate);

--placeNo =8 image
insert into pimage
values(SEQ_PIMAGE_NO.nextval,8,'place04+01.jpg',1,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,8,'place04+02.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,8,'place04+03.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,8,'place04+04.jpg',0,sysdate);

--placeNo =9 image
insert into pimage
values(SEQ_PIMAGE_NO.nextval,9,'place05+01.jpg',1,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,9,'place05+02.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,9,'place05+03.jpg',0,sysdate);

insert into pimage
values(SEQ_PIMAGE_NO.nextval,9,'place05+04.jpg',0,sysdate);

commit;