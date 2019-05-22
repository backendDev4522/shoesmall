-- goods table (상품 테이블) - 20개 필드
-- 변경 사항 : goods_credate -> goods_enter_date로 변경
-- 필드 설명 : 상품아이디, 상품종류, 상품제목, 저자, 출판사, 가격, 판매가격, 포인트, 출판일, 총페이지수
-- isbn번호, 배송비, 배송일, 판매분류, 상품소개, 저자소개, 출판사평, 추천사, 상품목차, 입고일 
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
 
-- goods_image table (상품 이미지 테이블) - 6개 필드
-- 변경 사항 : 6개 필드, credate -> reg_date로 변경
-- 필드 설명 : 이미지아이디, 상품아이디, 파일이름, 등록자아이디, 파일종류, 등록일
CREATE TABLE goods_image (
image_id NUMBER(20,0) primary key, 
goods_id NUMBER(20,0), 
filename VARCHAR2(50), 
reg_id VARCHAR2(20), 
filetype VARCHAR2(40), 
reg_date DATE DEFAULT sysdate
);

-- member table (회원 테이블) - 24-1 = 23개 필드
-- 변경 사항 : smssts_yn -> sms_yn, emailsts_yn -> email_yn, roadaddress -> road_address, jibunaddress -> jibun_address
-- namujiaddress -> detail_address, member_birth_y -> birth_year, member_birth_m -> birth_month, member_birth_d -> birth_day
-- joindate -> join_date, del_yn -> delete_yn으로 변경
-- member_birth_gn(양력음력) 필드는 삭제
-- 필드 설명 : 회원아이디, 회원암호, 회원이름, 회원성별, 전화번호1, 전화번호2, 전화번호3, 휴대폰1, 휴대폰2, 휴대폰3
-- sms여부, 이메일1, 이메일2, 이메일여부, 우편번호, 도로명주소, 지번주소, 상세주소, 출생년, 출생월, 출생일, 가입일, 탈퇴여부
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

-- order table (주문 테이블) - 27개 필드
-- 변경 사항 : pay_orderer_hp_num -> pay_orderer_hp
-- 필드 설명 : 주문상품일련번호, 주문번호, 회원아이디, 상품아이디, 주문자이름, 상품제목, 주문상품수량, 상품판매가격, 
-- 상품이미지파일이름, 수령자이름, 수령인휴대폰1, 수령인휴대폰2, 수령인휴대폰3, 수령인전화번화1, 수령인전화번호2, 수령인전화번호3,
-- 배송주소, 배송방법, 배송메시지, 선물포장여부, 결제방법, 카드회사이름, 할부개월, 결제자휴대폰, 배송상태, 결제시간, 주문자휴대폰
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
 
-- cart table (장바구니 테이블) - 6개 필드
-- 변경 사항 : del_yn -> delete_yn
-- 필드 설명 : 장바구니아이디, 상품아이디, 회원아이디, 장바구니삭제여부, 장바구니등록일, 장바구니상품수량 
CREATE TABLE cart ( 
cart_id NUMBER(10,0) primary key, 
goods_id NUMBER(20,0), 
member_id VARCHAR2(20), 
delete_yn VARCHAR2(20) DEFAULT 'N', 
reg_date DATE DEFAULT sysdate, 
cart_goods_qty NUMBER(4,0) DEFAULT 1
);
 