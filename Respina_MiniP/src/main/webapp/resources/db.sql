CREATE TABLE MEMBER(

	m_id varchar2(10 char) primary key,
	m_pw varchar2(10 char) not null,
	m_name varchar2(10 char) not null,
	m_addr varchar2(200 char) not null,
	m_photo varchar2(200 char) not null,
	m_class number(1) not null

);

INSERT INTO MEMBER VALUES('respina','sdj7524','병천','07614,서울시 강서구 개화동로 23길 45,646-19','asdf.gif',1);

SELECT * FROM member;