#팀프로젝트 (송은주,조석훈,연정인)


#1.bbs 테이블
CREATE TABLE BBS(
    bbsID INT,
    bbsTitle VARCHAR(50),
    userID VARCHAR(20),
    bbsDate DATETIME,
    bbsContent VARCHAR(2048),
    bbsAvailable INT,
    PRIMARY KEY (bbsID)
    );

#2.person 테이블
CREATE TABLE person(
    id VARCHAR(15) PRIMARY KEY,
	passwd VARCHAR(20),
	name VARCHAR(10),
	mail VARCHAR(20)
    
    );

#3.cart 테이블
CREATE TABLE cart(
    L_ID VARCHAR(20), 
	C_ID VARCHAR(30),
	C_NAME VARCHAR(50),
	C_UNITPRICE INT(38),
	C_FILENAME VARCHAR(35),
	C_COUNT INT(38)
    
    );

#4.product 테이블
CREATE TABLE product(
    P_ID VARCHAR(10) PRIMARY KEY, 
	P_NAME VARCHAR(30),
	P_UNITPRICE INT(38),
	P_DESCRIPTION VARCHAR(250),
	P_FILENAME VARCHAR(20),
	P_DIVISION VARCHAR(10)
    
    );
