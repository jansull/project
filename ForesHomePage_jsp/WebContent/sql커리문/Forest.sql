
--��� ���� �̷� ���̺�
create table forest.guide_list(
    no varchar(20) primary key not null,
    member_id varchar(100) not null,
    guide_check varchar(1) not null,
    guide_date datetime not null
);

--������� ���� ���̺�
create table forest.guide(
    no varchar(2) primary key not null,
    guide_name varchar(20) not null,
    guide_content varchar(1000) not null,
    guide_check varchar(1) not null
);
-- ȸ������ ���̺�
create table forest.member(
    no int primary key not null,
    member_id varchar(100) not null,
    member_name varchar(20) not null,
    gender varchar(1) not null,
    password varchar(100) not null,
    member_tel_1 varchar(3) not null,
    member_tel_2 varchar(4) not null,
    member_tel_3 varchar(4) not null,
    member_email varchar(200) not null,
    reg_date DATETIME not null,
    member_out_check varchar(1) DEFAULT  'x',
    member_rating varchar(2) not null,
    address varchar(45)
);
-- �÷� �� �ٲٴ� ��ɾ�
ALTER TABLE forest.pay
CHANGE COLUMN pay_no no int;

--  ���� ���̺�
create table forest.pay(
    pay_no int primary key not null,
    member_id varchar(100) not null,
    member_name varchar(20) not null,
    member_tel_1 varchar(3) not null,
    member_tel_2 varchar(4) not null,
    member_tel_3 varchar(4) not null,
    member_email varchar(200) not null,
    program varchar(200) not null,
    pay_reg_date DATETIME not null,
    human_count INT not null,
    payment varchar(20) not null,
    cancel_status varchar(1) DEFAULT  'x',
    confirmation_code INT not null,
    requests varchar(1000) 
);
