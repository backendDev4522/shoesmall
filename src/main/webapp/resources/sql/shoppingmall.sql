-- DDL for Table goods
-- 변경 사항: GOODS_CREDATE - > GOOD_ENTER_DATE
-- 필드 설명 : 아이디, 종류, 제목, 저자, 출판사, 가격, 판매가격, 포인트, 출판일, 
-- 총페이지수, isbn번호, 배송비, 배송일, 판매분류, 상품소개,저자소개, 출판사평, 추천사, 목차, 입고일 

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
-- 변경 사항: credate - > REG_DATE
-- 필드 설명 : 이미지아이디, 상품아이디, 파일이름, 등록자아이디, 파일종류, 등록일
 CREATE TABLE goods_image (
   "IMAGE_ID" NUMBER(20,0) primary key, 
	"GOODS_ID" NUMBER(20,0), 
	"FILENAME" VARCHAR2(50), 
	"REG_ID" VARCHAR2(20), 
	"FILETYPE" VARCHAR2(40), 
	"REG_DATE" DATE DEFAULT sysdate
   ) ;
   
--  DDL for Table T_SHOPPING_MEMBER 
-- 변경 사항: SMSSTS_YN -> SMS_YN,  EMAILSTS_YN - > EMAIL_YN,
-- NAMUJIADDRESS -> DETAIL_ADRESS ,ROADADRESS -> ROAD_ADRESS,
-- JIBUNADDRESS - > JIBUN_ADDRESS, MEMBER_BIRTH_Y - > BIRTH_YEAR,
-- JOINDATE->JOIN_DATE, MEMBER_BIRTH_GN 삭제
-- 필드 설명 : 회원아이디, 회원 비밀번호, 회원 이름, 회원성별,전화번호1, 전화번호2, 전화번호3,
-- 휴대폰1,휴대폰2,휴대폰3,sms여부,이메일1,이메일2,이메일여부,우편번호,도로명주소,지번주소,나머지주소,생년월일 년,월,일
-- 회원가입자, 회원탈퇴여부
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
   
--  DDL for Table T_SHOPPING_ORDER 27개 FEILD
-- 변경 사항: pay_orderer_hp_num ->pay_orderer_hp
-- 필드 설명: 주문일련번호, 주문번호, 회원아이디, 상품번호,주문자이름,
-- 상품제목, 주문상품수량, 상품판매가격, 상품이미지파일, 수령자이름,수령자휴대폰1,2,3,
-- 수령자유선번호1,2,3, 배송주소, 배송방법, 부재시 전달 메세지, 상품포장여부, 결제방법,
-- 결제카드회사이름, 할부개월수, 결제자 휴대폰번호, 상품배송상태, 결제시간, 휴대폰결제번호
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
-- 변경 사항 : del_yn ->delete_yn
-- 필드 설명 : 장바구니번호, 상품번호, 회원아이디, 장바구니삭제여부,
-- 장바구니 등록일, 장바구니 상품개수,
    
    CREATE TABLE CART
   (	
    "CART_ID" NUMBER(10,0) primary key, 
	"GOODS_ID" NUMBER(20,0), 
	"MEMBER_ID" VARCHAR2(20), 
	"DELETE_YN" VARCHAR2(20) DEFAULT 'N', 
	"REG_DATE" DATE DEFAULT sysdate, 
	"CART_GOODS_QTY" NUMBER(4,0) DEFAULT 1
   ) ;
   
   
   
   Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE) values (346,394,'무작정 따라가기 홍콩 마카오.jpg','admin','main_image');
   Insert into T_GOODS_DETAIL_IMAGE (IMAGE_ID,GOODS_ID,FILENAME,REG_ID,FILETYPE values (347,394,'무작정 따라가기 홍콩 마카오_상세.jpg','admin','detail_image1',to_date('18/10/16','RR/MM/DD'));

   