-- DDL for Table goods
-- ���� ����: GOODS_CREDATE - > GOOD_ENTER_DATE
-- �ʵ� ���� : ���̵�, ����, ����, ����, ���ǻ�, ����, �ǸŰ���, ����Ʈ, ������, 
-- ����������, isbn��ȣ, ��ۺ�, �����, �Ǹźз�, ��ǰ�Ұ�,���ڼҰ�, ���ǻ���, ��õ��, ����, �԰��� 

   CREATE TABLE goods
   ("GOODS_ID" NUMBER(20,0) primary key,
   "GOODS_MODEL" VARCHAR2(100) NOT NULL,
	"GOODS_SORT" VARCHAR2(50) NOT NULL, 
	"GOODS_TITLE" VARCHAR2(100) NOT NULL, 
    "GOODS_GENDER" VARCHAR2(10) NOT NULL,
	"GOODS_PRICE" NUMBER(10,0) NOT NULL, 
	"GOODS_SALES_PRICE" NUMBER(10,0), 
	"GOODS_POINT" NUMBER(10,0), 
    "GOODS_DELIVERY_PRICE" NUMBER(10,0), 
	"GOODS_DELIVERY_DATE" DATE, 
	"GOODS_STATUS" VARCHAR2(50),
    "GOODS_MATERIAL" VARCHAR2(500),
    "GOODS_FEATURES" VARCHAR2(1000),
	"GOODS_INTRO" VARCHAR2(2000), 
    "GOODS_MANUFACTURER" VARCHAR2(50),
    "GOODS_MANUFACTURER_COUNTRY" VARCHAR2(100),
    "GOODS_MANUFACTURER_DATE" DATE,
	"GOODS_ENTER_DATE" DATE DEFAULT sysdate
   ) ;
   DROP TABLE GOODS;
   CREATE TABLE TB_GOODS_DETALE(
   "GOODS_ID" VARCHAR2(100) NOT NULL,
   "GOODS_SIZE" NUMBER(5,0) NOT NULL,
   "GOODS_COLOR" VARCHAR2(20) NOT NULL
   );

-- DDL for Table goods_image
-- ���� ����: credate - > REG_DATE
-- �ʵ� ���� : �̹������̵�, ��ǰ���̵�, �����̸�, ����ھ��̵�, ��������, �����
 CREATE TABLE goods_image (
   "IMAGE_ID" NUMBER(20,0) primary key, 
	"GOODS_ID" NUMBER(20,0), 
	"FILENAME" VARCHAR2(50), 
	"REG_ID" VARCHAR2(20), 
	"FILETYPE" VARCHAR2(40), 
	"REG_DATE" DATE DEFAULT sysdate
   ) ;
   
--  DDL for Table T_SHOPPING_MEMBER 
-- ���� ����: SMSSTS_YN -> SMS_YN,  EMAILSTS_YN - > EMAIL_YN,
-- NAMUJIADDRESS -> DETAIL_ADRESS ,ROADADRESS -> ROAD_ADRESS,
-- JIBUNADDRESS - > JIBUN_ADDRESS, MEMBER_BIRTH_Y - > BIRTH_YEAR,
-- JOINDATE->JOIN_DATE, MEMBER_BIRTH_GN ����
-- �ʵ� ���� : ȸ�����̵�, ȸ�� ��й�ȣ, ȸ�� �̸�, ȸ������,��ȭ��ȣ1, ��ȭ��ȣ2, ��ȭ��ȣ3,
-- �޴���1,�޴���2,�޴���3,sms����,�̸���1,�̸���2,�̸��Ͽ���,�����ȣ,���θ��ּ�,�����ּ�,�������ּ�,������� ��,��,��
-- ȸ��������, ȸ��Ż�𿩺�
    CREATE TABLE member
   ("MEMBER_ID" VARCHAR2(20) primary key, 
	"MEMBER_PW" VARCHAR2(30), 
	"MEMBER_NAME" VARCHAR2(50), 
	"MEMBER_GENDER" VARCHAR2(10),
	"HP1" VARCHAR2(20), 
	"HP2" VARCHAR2(20), 
	"HP3" VARCHAR2(20), 
	"SMS_YN" VARCHAR2(20), 
	"EMAIL1" VARCHAR2(20), 
	"EMAIL2" VARCHAR2(20), 
	"EMAIL_YN" VARCHAR2(20), 
	"ZIPCODE" VARCHAR2(20), 
	"ROAD_ADDRESS" VARCHAR2(500), 
	"JIBUN_ADDRESS" VARCHAR2(500), 
	"DETAIL_ADDRESS" VARCHAR2(500), 
	"BIRTH_YEAR" VARCHAR2(20), 
	"BIRTH_MONTH" VARCHAR2(20), 
	"BIRTH_DAY" VARCHAR2(20), 
	"JOIN_DATE" DATE DEFAULT sysdate, 
	"DELETE_YN" VARCHAR2(20) DEFAULT 'N'
   ) ;
   
--  DDL for Table T_SHOPPING_ORDER 27�� FEILD
-- ���� ����: pay_orderer_hp_num ->pay_orderer_hp
-- �ʵ� ����: �ֹ��Ϸù�ȣ, �ֹ���ȣ, ȸ�����̵�, ��ǰ��ȣ,�ֹ����̸�,
-- ��ǰ����, �ֹ���ǰ����, ��ǰ�ǸŰ���, ��ǰ�̹�������, �������̸�,�������޴���1,2,3,
-- ������������ȣ1,2,3, ����ּ�, ��۹��, ����� ���� �޼���, ��ǰ���忩��, �������,
-- ����ī��ȸ���̸�, �Һΰ�����, ������ �޴�����ȣ, ��ǰ��ۻ���, �����ð�, �޴���������ȣ
   CREATE TABLE orders
   (
    "ORDER_SEQ_NUM" NUMBER(20,0) primary key, 
	"ORDER_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(20), 
	"GOODS_ID" NUMBER(20,0), 
	"ORDERER_NAME" VARCHAR2(50), 
	"GOODS_TITLE" VARCHAR2(100 BYTE), 
	"ORDER_GOODS_QTY" NUMBER(5,0), 
	"GOODS_SALES_PRICE" NUMBER(5,0), 
	"GOODS_FILENAME" VARCHAR2(60), 
	"RECEIVER_NAME" VARCHAR2(50), 
	"RECEIVER_HP1" VARCHAR2(20), 
	"RECEIVER_HP2" VARCHAR2(20), 
	"RECEIVER_HP3" VARCHAR2(20), 
	"RECEIVER_TEL1" VARCHAR2(20), 
	"RECEIVER_TEL2" VARCHAR2(20), 
	"RECEIVER_TEL3" VARCHAR2(20), 
	"DELIVERY_ADDRESS" VARCHAR2(500), 
	"DELIVERY_METHOD" VARCHAR2(40), 
	"DELIVERY_MESSAGE" VARCHAR2(300), 
	"GIFT_WRAPPING" VARCHAR2(20), 
	"PAY_METHOD" VARCHAR2(200), 
	"CARD_COM_NAME" VARCHAR2(50), 
	"CARD_PAY_MONTH" VARCHAR2(20), 
	"PAY_ORDERER_HP" VARCHAR2(20), 
	"DELIVERY_STATE" VARCHAR2(20) DEFAULT 'delivery_prepared', 
	"PAY_ORDER_TIME" DATE DEFAULT sysdate, 
	"ORDERER_HP" VARCHAR2(50)
   ) ;
--  DDL for Table cart
-- ���� ���� : del_yn ->delete_yn
-- �ʵ� ���� : ��ٱ��Ϲ�ȣ, ��ǰ��ȣ, ȸ�����̵�, ��ٱ��ϻ�������,
-- ��ٱ��� �����, ��ٱ��� ��ǰ����,
    
    CREATE TABLE CART
   (	
    "CART_ID" NUMBER(10,0) primary key, 
	"GOODS_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(20), 
	"DELETE_YN" VARCHAR2(20) DEFAULT 'N', 
	"REG_DATE" DATE DEFAULT sysdate, 
	"CART_GOODS_QTY" NUMBER(4,0) DEFAULT 1
   ) ;
   
   
   
   Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE) values (346,394,'������ ���󰡱� ȫ�� ��ī��.jpg','admin','main_image');
   Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE values (347,394,'������ ���󰡱� ȫ�� ��ī��_��.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));

   