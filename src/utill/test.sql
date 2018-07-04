insert into TB_MEMBER(mem_no,mem_id,mem_pass,mem_email,mem_name)
values(s_member_no.nextval,'test001','0000','001@na.com','테스트1');
insert into TB_MEMBER(mem_no,mem_id,mem_pass,mem_email,mem_name)
values(s_member_no.nextval,'test002','0000','003@na.com','테스트2');
insert into TB_MEMBER(mem_no,mem_id,mem_pass,mem_email,mem_name)
values(s_member_no.nextval,'test003','0000','002@na.com','테스트3');

insert into TB_MEMBER(mem_no,mem_id,mem_pass,mem_email,mem_name,LOGIN)
values(s_member_no.nextval,'test004','0000','004@na.com','테스트4','y');
insert into TB_MEMBER(mem_no,mem_id,mem_pass,mem_email,mem_name,LOGIN )
values(s_member_no.nextval,'test005','0000','005@na.com','테스트5','y');
insert into TB_MEMBER(mem_no,mem_id,mem_pass,mem_email,mem_name,LOGIN )
values(s_member_no.nextval,'test006','0000','006@na.com','테스트6','y');



insert into TB_MEMBER(mem_no,mem_id,mem_pass,mem_email,mem_name,LOGIN,profile_path )
values(s_member_no.nextval,'bobobo','0000','bobo@test.com','보영이에요','n','/bitbook/member_profile/bobobo.jpg');


insert into tb_member_detail(mem_no,profile_path)
values('1042','/bitbook/member_profile/mem1042test1.jpg');

delete
  form TB_FILE_GROUP

delete
  form TB_FILE

delete
  form TB_POST
 where no >0


select *
  from TB_FILE_GROUP 
  
select *
  from TB_FILE
  
select *
  from TB_post

  delete
    from TB_FILE_GROUP
   where FILE_GROUP_NO = 1
   
  delete
    from TB_FILE
   where FILE_GROUP_NO = 1

select *
  from tb_member
 where mem_name = '보영이에요'
  
select *
  from tb_member
 where mem_name = 'name1024'
  
select *
  from TB_MEMBER
  
  
update TB_MEMBER
   set profile_path = '/bitbook/member_profile/defalutImg.jpg'
 where profile_path IS NULL
 
update TB_MEMBER
   set login = 'n'
 where login = 'N'

insert into TB_FRIENDS
values('1048','1061','a');
insert into TB_FRIENDS
values('1061','1048','a');
 

ALTER TABLE TB_MEMBER
 CHANGE COLUMN login char
 ADD PRIMARY KEY (proj_id);

alter table 테이블명 MODIFY (컬럼명 자료형);
alter table TB_MEMBER MODIFY login char(1) defalut 'n'

select *
  from tb_member


select mem_name, friends_no, login, profile_path
  from tb_friends f
 inner join tb_member m
    on f.friends_no = m.mem_no
 where f.mem_no = '1048'
   and m.mem_name like '%%'
 order by login

 
 
  	 select mem_name, friends_no, login, profile_path, logout_date
	  from tb_friends f
	 inner join tb_member m
	    on f.friends_no = m.mem_no
	 where f.mem_no = '1048'
	   and m.mem_name like '%'||''||'%'
	 order by login 
 
 
 
 
   
select *
  from tb_friends