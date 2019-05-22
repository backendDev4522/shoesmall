-- goods table (��ǰ ���̺�) - 20�� �ʵ�
-- ���� ���� : goods_credate -> goods_enter_date�� ����
-- �ʵ� ���� : ��ǰ���̵�, ��ǰ����, ��ǰ����, ����, ���ǻ�, ����, �ǸŰ���, ����Ʈ, ������, ����������
-- isbn��ȣ, ��ۺ�, �����, �Ǹźз�, ��ǰ�Ұ�, ���ڼҰ�, ���ǻ���, ��õ��, ��ǰ����, �԰��� 
CREATE TABLE goods (
goods_id NUMBER(20,0) primary key,
goods_sort VARCHAR2(50),
goods_title VARCHAR2(100), 
goods_writer VARCHAR2(50), 
goods_publisher VARCHAR2(50), 
goods_price NUMBER(10,0), 
goods_sales_price NUMBER(10,0), 
goods_point NUMBER(10,0), 
goods_published_date DATE, 
goods_total_page NUMBER(5,0), 
goods_isbn VARCHAR2(50), 
goods_delivery_price NUMBER(10,0), 
goods_delivery_date DATE, 
goods_status VARCHAR2(50), 
goods_intro VARCHAR2(2000), 
goods_writer_intro VARCHAR2(2000), 
goods_publisher_comment VARCHAR2(2000), 
goods_recommendation VARCHAR2(2000), 
goods_contents_order CLOB, 
goods_enter_date DATE DEFAULT sysdate
);
 
-- goods_image table (��ǰ �̹��� ���̺�) - 6�� �ʵ�
-- ���� ���� : 6�� �ʵ�, credate -> reg_date�� ����
-- �ʵ� ���� : �̹������̵�, ��ǰ���̵�, �����̸�, ����ھ��̵�, ��������, �����
CREATE TABLE goods_image (
image_id NUMBER(20,0) primary key, 
goods_id NUMBER(20,0), 
filename VARCHAR2(50), 
reg_id VARCHAR2(20), 
filetype VARCHAR2(40), 
reg_date DATE DEFAULT sysdate
);

-- member table (ȸ�� ���̺�) - 24-1 = 23�� �ʵ�
-- ���� ���� : smssts_yn -> sms_yn, emailsts_yn -> email_yn, roadaddress -> road_address, jibunaddress -> jibun_address
-- namujiaddress -> detail_address, member_birth_y -> birth_year, member_birth_m -> birth_month, member_birth_d -> birth_day
-- joindate -> join_date, del_yn -> delete_yn���� ����
-- member_birth_gn(�������) �ʵ�� ����
-- �ʵ� ���� : ȸ�����̵�, ȸ����ȣ, ȸ���̸�, ȸ������, ��ȭ��ȣ1, ��ȭ��ȣ2, ��ȭ��ȣ3, �޴���1, �޴���2, �޴���3
-- sms����, �̸���1, �̸���2, �̸��Ͽ���, �����ȣ, ���θ��ּ�, �����ּ�, ���ּ�, �����, �����, �����, ������, Ż�𿩺�
CREATE TABLE member (
member_id VARCHAR2(20) primary key, 
member_pw VARCHAR2(30), 
member_name VARCHAR2(50), 
member_gender VARCHAR2(10), 
tel1 VARCHAR2(20), 
tel2 VARCHAR2(20), 
tel3 VARCHAR2(20), 
hp1 VARCHAR2(20), 
hp2 VARCHAR2(20), 
hp3 VARCHAR2(20), 
sms_yn VARCHAR2(20), 
email1 VARCHAR2(20), 
email2 VARCHAR2(20), 
email_yn VARCHAR2(20), 
zipcode VARCHAR2(20), 
road_address VARCHAR2(500), 
jibun_address VARCHAR2(500), 
detail_address VARCHAR2(500), 
birth_year VARCHAR2(20), 
birth_month VARCHAR2(20), 
birth_day VARCHAR2(20), 
join_date DATE DEFAULT sysdate, 
delete_yn VARCHAR2(20) DEFAULT 'N'
);

-- order table (�ֹ� ���̺�) - 27�� �ʵ�
-- ���� ���� : pay_orderer_hp_num -> pay_orderer_hp
-- �ʵ� ���� : �ֹ���ǰ�Ϸù�ȣ, �ֹ���ȣ, ȸ�����̵�, ��ǰ���̵�, �ֹ����̸�, ��ǰ����, �ֹ���ǰ����, ��ǰ�ǸŰ���, 
-- ��ǰ�̹��������̸�, �������̸�, �������޴���1, �������޴���2, �������޴���3, ��������ȭ��ȭ1, ��������ȭ��ȣ2, ��������ȭ��ȣ3,
-- ����ּ�, ��۹��, ��۸޽���, �������忩��, �������, ī��ȸ���̸�, �Һΰ���, �������޴���, ��ۻ���, �����ð�, �ֹ����޴���
CREATE TABLE orders (
order_seq_num NUMBER(20,0) primary key, 
order_id NUMBER(20,0), 
member_id VARCHAR2(20), 
goods_id NUMBER(20,0), 
orderer_name VARCHAR2(50), 
goods_title VARCHAR2(100), 
order_goods_qty NUMBER(5,0), 
goods_sales_price NUMBER(5,0), 
goods_filename VARCHAR2(60), 
receiver_name VARCHAR2(50), 
receiver_hp1 VARCHAR2(20), 
receiver_hp2 VARCHAR2(20), 
receiver_hp3 VARCHAR2(20), 
receiver_tel1 VARCHAR2(20), 
receiver_tel2 VARCHAR2(20), 
receiver_tel3 VARCHAR2(20), 
delivery_address VARCHAR2(500), 
delivery_method VARCHAR2(40), 
delivery_message VARCHAR2(300), 
gift_wrapping VARCHAR2(20), 
pay_method VARCHAR2(200), 
card_com_name VARCHAR2(50), 
card_pay_month VARCHAR2(20), 
pay_orderer_hp VARCHAR2(20), 
delivery_state VARCHAR2(20) DEFAULT 'delivery_prepared', 
pay_order_time DATE DEFAULT sysdate, 
orderer_hp VARCHAR2(50)
);
 
-- cart table (��ٱ��� ���̺�) - 6�� �ʵ�
-- ���� ���� : del_yn -> delete_yn
-- �ʵ� ���� : ��ٱ��Ͼ��̵�, ��ǰ���̵�, ȸ�����̵�, ��ٱ��ϻ�������, ��ٱ��ϵ����, ��ٱ��ϻ�ǰ���� 
CREATE TABLE cart ( 
cart_id NUMBER(10,0) primary key, 
goods_id NUMBER(20,0), 
member_id VARCHAR2(20), 
delete_yn VARCHAR2(20) DEFAULT 'N', 
reg_date DATE DEFAULT sysdate, 
cart_goods_qty NUMBER(4,0) DEFAULT 1
);
 