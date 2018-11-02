select * from tbl_booking;
select * from tbl_booking_schedule;
select * from tbl_booking_schedule_detail;
select * from tbl_booking_service;
select * from tbl_booking_service_extra;
select * from tbl_payment;
select * from tbl_sitter;
select * from tbl_sitter_animalspec;
select * from tbl_sitter_schedule;
select * from tbl_sitter_certificate;
select * from tbl_sitter_service;
select * from tbl_sitter_service_extra;
select * from tbl_review;
select * from tbl_user;
select * from tbl_user_pet;

SELECT TS.SITTERNUMBER, TB.USERNUMBER, TB.BOOKINGNUMBER, TBS.TITLE, TBS.START, TBS.END, TBS.DESCRIPTION
		FROM TBL_BOOKING AS TB, TBL_BOOKING_SCHEDULE AS TBS, TBL_SITTER AS TS
		WHERE TBS.BOOKINGNUMBER = TB.BOOKINGNUMBER AND TB.SITTERNUMBER = TS.SITTERNUMBER AND TS.SITTERNUMBER= 1;

insert into tbl_user(userId, userName, userPassword, userGender, userDateOfBirth, userPhoneNumber, userEmail, userAddress) value('forpet', '포펫', '123', '여자', '2018-11-15', '010-8823-0721', 'conal01@naver.com', '서울시 강서구');
insert into tbl_user_pet(userId, userNumber, petType, petName, petGender, petDateOfBirth, petWeight) value('conal01', 1, '미니핀', '지지', '남자', '2014-05-01', 7);
insert into tbl_user_pet(userId, userNumber, petType, petName, petGender, petDateOfBirth, petWeight) value('yyyyy0115', 2, '푸들', '사랑이', '남자', '2015-01-15', 6);
insert into tbl_user_pet(userId, userNumber, petType, petName, petGender, petDateOfBirth, petWeight) value('forpet', 3, '도베르만', '안물어요', '여자', '2018-11-01', 20);
insert into tbl_sitter(userNumber, userId, introduce, precautions) value(1, 'conal01', '안녕하세요', '털 많으면 안됨');
insert into tbl_sitter_animalspec(sitterNumber, animalType) value(1, '개');
insert into tbl_sitter_schedule value();
insert into tbl_sitter_certificate(sitterNumber, certificateName) value(1, '미용자격증');
insert into tbl_sitter_service value()
insert into tbl_sitter_service_extra value();
insert into tbl_booking(userId, userNumber, sitterNumber, pickupAddress, bookingAddress, ServicePrice, extraServicePrice, totalPrice, progressState) value('yyyyy0115', 2, 1, '강서구', '강서구', 12000, 2000, 14000, '예약중');
insert into tbl_booking(userId, userNumber, sitterNumber, pickupAddress, bookingAddress, ServicePrice, extraServicePrice, totalPrice, progressState) value('forpet', 3, 1, '강남구', '강남구', 12000, 6000, 18000, '예약중');
insert into tbl_booking_schedule(bookingNumber, title, start, end, description) value(1, '사랑이 돌보기', '2018-11-01', '2018-11-03', '약먹어야대욤');
insert into tbl_booking_schedule(bookingNumber, title, start, end, description) value(2, '도베르만과 결투', '2018-11-05', '2018-11-09', '안물긴개뿔');
insert into tbl_booking_schedule_detail value()
insert into tbl_booking_service value()
insert into tbl_booking_service_extra value()
insert into tbl_payment value()
insert into tbl_review value();

SELECT ts.sitterNumber, TB.USERNUMBER, TB.BOOKINGNUMBER, TBS.TITLE, TBS.START, TBS.END, TBS.DESCRIPTION
FROM TBL_BOOKING AS TB, TBL_BOOKING_SCHEDULE AS TBS, tbl_sitter as TS
where TBS.BOOKINGNUMBER = TB.BOOKINGNUMBER and TB.sitterNUMBER = ts.sitterNUMBER and ts.sitterNUMBER= 1;

UPDATE TBL_BOOKING SET PROGRESSSTATE = '예약중' 
WHERE BOOKINGNUMBER = 1;

UPDATE TBL_BOOKING SET PROGRESSSTATE = '수락완료' WHERE BOOKINGNUMBER = 1;

select * FROM tbl_user WHERE tbl_user.userAddress like '%서울%';

		SELECT TS.SITTERNUMBER, U.USERNAME, UP.PETNAME, TB.USERNUMBER, TB.BOOKINGDATE, TB.BOOKINGNUMBER , UP.PETTYPE, UP.PETGENDER, UP.PETDATEOFBIRTH 
		FROM TBL_BOOKING AS TB, TBL_BOOKING_SCHEDULE AS TBS, TBL_USER AS U, TBL_USER_PET AS UP, TBL_SITTER AS TS
		WHERE TBS.BOOKINGNUMBER = TB.BOOKINGNUMBER and U.USERNUMBER = TB.USERNUMBER AND U.USERNUMBER = UP.USERNUMBER AND TB.SITTERNUMBER = TS.SITTERNUMBER AND TB.BOOKINGNUMBER = 1;
