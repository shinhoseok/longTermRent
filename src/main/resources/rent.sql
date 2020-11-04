drop table if exists USERS;
drop table if exists SN_MANAGE;
drop table if exists VISITOR_SURVEY_MPPG;
drop table if exists SURVEY_ASR;
drop table if exists SURVEY_QTN;
drop table if exists VISITORS;
drop table if exists LINK;


-- 사용자
CREATE TABLE USERS
(
	USER_SEQ      VARCHAR(20)                 NOT NULL       COMMENT '사용자시퀀스',
	USER_ID      VARCHAR(20)                 NOT NULL       COMMENT '사용자아이디',
	USER_PW      VARCHAR(20)                 NOT NULL      COMMENT '로그인비밀번호',
	USER_NM      VARCHAR(50)                NOT NULL       COMMENT '사용자이름',
	DEL_YN		CHAR(1)					 	NOT NULL			COMMENT '삭제여부',
	EMAIL_ADDR  VARCHAR(100)                               COMMENT '이메일',
	REG_ID            VARCHAR(20) NULL        COMMENT '등록_ID',
	REG_DT            DATETIME NULL           COMMENT '등록_일자',
	MOD_ID              VARCHAR(20) NULL     COMMENT '수정_ID',
	MOD_DT              DATETIME NULL        COMMENT '수정_일자'
)COMMENT '사용자테이블';

ALTER TABLE USERS
ADD PRIMARY KEY (USER_SEQ);




--
-- SN_MANAGE  (시퀀스관리) 
--
CREATE TABLE SN_MANAGE
(
  TABLE_NAME  VARCHAR(20)                 NOT NULL COMMENT '테이블_이름',
  NEXT_ID     INTEGER                              COMMENT '다음_ID'
)COMMENT '일련번호_관리';

ALTER TABLE SN_MANAGE
ADD PRIMARY KEY (TABLE_NAME);



-- 방문자
CREATE TABLE VISITORS
(
	VISITOR_ID      VARCHAR(20)                 NOT NULL       COMMENT '방문자ID',
	ACCESS_PATH      VARCHAR(100)                  NULL      COMMENT '접속경로',
	VISITOR_NM      VARCHAR(50)                 NULL       COMMENT '방문자이름',
	ITRSTD_CAR_TY      VARCHAR(50)                 NULL       COMMENT '관심차종',
	TEL_NO           VARCHAR(50) NULL COMMENT '전화번호',
	DEL_YN		CHAR(1)					 	NOT NULL			COMMENT '삭제여부',
	REG_DT            DATETIME NULL           COMMENT '등록_일자'
)COMMENT '방문자테이블';

ALTER TABLE VISITORS
ADD PRIMARY KEY (VISITOR_ID);

-- 설문질문
CREATE TABLE SURVEY_QTN
(
	QTN_ID            VARCHAR(20)                 NOT NULL       COMMENT '질문ID',
	QTN_CONTENTS      VARCHAR(100)                  NULL      COMMENT '질문내용',
	DEL_YN		      CHAR(1)					 	NOT NULL			COMMENT '삭제여부',
	REG_ID            VARCHAR(20) NULL        COMMENT '등록_ID',
	REG_DT            DATETIME NULL           COMMENT '등록_일자',
	MOD_ID              VARCHAR(20) NULL     COMMENT '수정_ID',
	MOD_DT              DATETIME NULL        COMMENT '수정_일자'
)COMMENT '설문질문';

ALTER TABLE SURVEY_QTN
ADD PRIMARY KEY (QTN_ID);

-- 설문답변
CREATE TABLE SURVEY_ASR
(
	ASR_ID            VARCHAR(20)                 NOT NULL       COMMENT '답변ID',
	QTN_ID            VARCHAR(20)                 NOT NULL       COMMENT '질문ID',
	ASR_CONTENTS      VARCHAR(100)                  NULL      COMMENT '답변내용',
	DEL_YN		      CHAR(1)					 	NOT NULL			COMMENT '삭제여부',
	REG_ID            VARCHAR(20) NULL        COMMENT '등록_ID',
	REG_DT            DATETIME NULL           COMMENT '등록_일자',
	MOD_ID              VARCHAR(20) NULL     COMMENT '수정_ID',
	MOD_DT              DATETIME NULL        COMMENT '수정_일자'
)COMMENT '설문답변';

ALTER TABLE SURVEY_ASR
ADD PRIMARY KEY (ASR_ID);

ALTER TABLE SURVEY_ASR
ADD CONSTRAINT R_1 FOREIGN KEY (QTN_ID) REFERENCES SURVEY_QTN (QTN_ID);

-- 방문자설문매핑


CREATE TABLE VISITOR_SURVEY_MPPG
(
	MPPG_ID VARCHAR(20) NOT NULL COMMENT '매핑_ID',
	VISITOR_ID VARCHAR(20) NOT NULL COMMENT '방문자ID',
	QTN_ID VARCHAR(20) NOT NULL COMMENT '질문ID',
	ASR_ID VARCHAR(20) NOT NULL COMMENT '답변ID',
	REG_ID            VARCHAR(20) NULL        COMMENT '등록_ID',
	REG_DT            DATETIME NULL           COMMENT '등록_일자'
)COMMENT '방문자_설문_매핑';

ALTER TABLE VISITOR_SURVEY_MPPG
ADD PRIMARY KEY (MPPG_ID);

ALTER TABLE VISITOR_SURVEY_MPPG
ADD CONSTRAINT R_2 FOREIGN KEY (VISITOR_ID) REFERENCES VISITORS (VISITOR_ID);

ALTER TABLE VISITOR_SURVEY_MPPG
ADD CONSTRAINT R_3 FOREIGN KEY (QTN_ID) REFERENCES SURVEY_QTN (QTN_ID);

ALTER TABLE VISITOR_SURVEY_MPPG
ADD CONSTRAINT R_4 FOREIGN KEY (ASR_ID) REFERENCES SURVEY_ASR (ASR_ID);


-- 링크
CREATE TABLE LINK
(
	LINK_ID      VARCHAR(20)                 NOT NULL       COMMENT '링크ID',
	LINK_ADDR      VARCHAR(200)                  NULL      COMMENT '링크주소',
	LINK_KIND		  CHAR(1)					 	NOT NULL			COMMENT '링크종류',
	DEL_YN		      CHAR(1)					 	NOT NULL			COMMENT '삭제여부',
	REG_ID            VARCHAR(20) NULL        COMMENT '등록_ID',
	REG_DT            DATETIME NULL           COMMENT '등록_일자',
	MOD_ID              VARCHAR(20) NULL     COMMENT '수정_ID',
	MOD_DT              DATETIME NULL        COMMENT '수정_일자'
)COMMENT '링크';

ALTER TABLE LINK
ADD PRIMARY KEY (LINK_ID);



INSERT INTO USERS (user_seq, user_id, user_pw, user_nm, del_yn, email_addr, reg_id, reg_dt) VALUES ('USR-000000', 'admin', 'qkfmscjdsus1!', '관리자', 'N', 'masin84@hanmail.net', 'USR-000000', NOW());
	
INSERT INTO SURVEY_QTN (qtn_id, qtn_contents, del_yn, reg_id, reg_dt) VALUES ('QTN-000000', '장기렌트, 영업기밀을 알면 특별한 할인이 있다는 것을 아시나요?', 'N', 'USR-000000', NOW());

INSERT INTO SURVEY_QTN (qtn_id, qtn_contents, del_yn, reg_id, reg_dt) VALUES ('QTN-000001', '에이전시, 대리점, 홈쇼핑의 차이점을 알고 계신가요?', 'N', 'USR-000000', NOW());

INSERT INTO SURVEY_QTN (qtn_id, qtn_contents, del_yn, reg_id, reg_dt) VALUES ('QTN-000002', '생각하시는 월 비용은 얼마인가요?', 'N', 'USR-000000', NOW());