
show grants for 'test2'@'%';

# '자신의 이름(영문)' @서버에서만 접속 가능, 비밀번호 1234
# 해당 계정의 비밀번호를 1q2w3e4r로 변경
# 권한 study2 데이터베이스 >> , study3(select, insert, delete)
# 권한 study3 데이터베이스 >> product_tb(select)
#delete 권한 수정 



create user 'geunhae'@'localhost' identified by '1234'; 

alter user 'geunhae'@'localhost' identified by '1q2w3e4r';

grant select, insert, update, delete on `study2`.`user_tb` to 'geunhae'@'localhost';
flush privileges;

show grants for 'geunhae'@'localhost';

revoke update on `study2`.`user_tb` from 'geunhae'@'localhost';
flush privileges;

grant select on `study3`.`product_tb` to 'geunhae'@'localhost';
flush privileges;

show grants for 'geunhae'@'localhost';
flush privileges;

# delete 권한 추가
grant delete on `study3`.`product_tb` to 'geunhae'@'localhost';
flush privileges;

show grants for 'geunhae'@'localhost';

select version();