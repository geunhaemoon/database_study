# 사용자 추가
create user test1@localhost identified by '1234'; 
-- create user test1@192.168.0.1 identified by '1234'; 
-- 					여기 적힌 주소에서만 입장 가능 
-- 로컬 호스트로 두고 원격으로 입장가능하게 함... 

use mysql;
select host, user from user;

# 사용자 권한
-- grant all privileges on study3.* to test1@localhost;
--  						>> * 이 표시가 sutdy3에 있는 모든 권한을 test1에 주겠다 라는 뜻 
# 사용자 권한 
revoke all on study3.* from test1@localhost;
grant all privileges on study3.user_tb to test1@localhost;

create user 'test2'@'%' identified by '1234';
-- 					퍼센트는 어디서나 접속 가능하다  

# test1 비밀번호 변경
alter user 'test1'@'localhost' identified by '1111';
flush privileges;


use mysql;
select host, user from user;

-- 비밀번호 변경 하는법
alter user 'test2'@'%' identified by '1111';
flush privileges;

-- slect insert 둘 다 줄 수 있음 
grant select, insert on `study3`.`user_tb` to 'test2'@'%';
flush privileges;

revoke insert on `study3`.`user_tb` from 'test2'@'%';
flush privileges;

show grants for 'test2'@'%'; 
