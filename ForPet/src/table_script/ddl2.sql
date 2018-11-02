-- tbl_user
CREATE TABLE tbl_user (
	userNumber      INT          NOT NULL COMMENT 'userNumber', -- userNumber
	userId          VARCHAR(20)  NOT NULL COMMENT 'userId', -- userId
	userName        VARCHAR(20)  NOT NULL COMMENT 'userName', -- userName
	userPassword    VARCHAR(20)  NOT NULL COMMENT 'userPassword', -- userPassword
	userGender      VARCHAR(50)  NOT NULL COMMENT 'userGender', -- userGender
	userDateOfBirth DATE         NOT NULL COMMENT 'userDateOfBirth', -- userDateOfBirth
	userPhoneNumber VARCHAR(50)  NOT NULL COMMENT 'userPhoneNumber', -- userPhoneNumber
	userEmail       VARCHAR(50)  NOT NULL COMMENT 'userEmail', -- userEmail
	userAddress     VARCHAR(200) NOT NULL COMMENT 'userAddress' -- userAddress
)
COMMENT 'tbl_user';

-- tbl_user
ALTER TABLE tbl_user
	ADD CONSTRAINT PK_tbl_user -- tbl_user 기본키
		PRIMARY KEY (
			userNumber, -- userNumber
			userId      -- userId
		);

ALTER TABLE tbl_user
	MODIFY COLUMN userNumber INT NOT NULL AUTO_INCREMENT COMMENT 'userNumber';

-- tbl_sitter
CREATE TABLE tbl_sitter (
	sitterNumber      INT           NOT NULL COMMENT 'sitterNumber', -- sitterNumber
	userNumber        INT           NULL     COMMENT 'userNumber', -- userNumber
	userId            VARCHAR(20)   NULL     COMMENT 'userId', -- userId
	introduce         VARCHAR(1000) NOT NULL COMMENT 'introduce', -- introduce
	precautions       VARCHAR(1000) NOT NULL COMMENT 'precautions', -- precautions
	totalServiceCnt   INT           NOT NULL DEFAULT 0 COMMENT 'totalServiceCnt', -- totalServiceCnt
	totlaServiceScore INT           NOT NULL DEFAULT 0 COMMENT 'totlaServiceScore' -- totlaServiceScore
)
COMMENT 'tbl_sitter';

-- tbl_sitter
ALTER TABLE tbl_sitter
	ADD CONSTRAINT PK_tbl_sitter -- tbl_sitter 기본키
		PRIMARY KEY (
			sitterNumber -- sitterNumber
		);

ALTER TABLE tbl_sitter
	MODIFY COLUMN sitterNumber INT NOT NULL AUTO_INCREMENT COMMENT 'sitterNumber';

-- tbl_user_pet
CREATE TABLE tbl_user_pet (
	petNumber      INT         NOT NULL COMMENT 'petNumber', -- petNumber
	userId         VARCHAR(20) NULL     COMMENT 'userId', -- userId
	userNumber     INT         NULL     COMMENT 'userNumber', -- userNumber
	petType        VARCHAR(50) NOT NULL COMMENT 'petType', -- petType
	petName        VARCHAR(20) NOT NULL COMMENT 'petName', -- petName
	petGender      VARCHAR(20) NOT NULL COMMENT 'petGender', -- petGender
	petDateOfBirth DATE        NOT NULL COMMENT 'petDateOfBirth', -- petDateOfBirth
	COL            INT         NULL     COMMENT 'petWeight' -- petWeight
)
COMMENT 'tbl_user_pet';

-- tbl_user_pet
ALTER TABLE tbl_user_pet
	ADD CONSTRAINT PK_tbl_user_pet -- tbl_user_pet 기본키
		PRIMARY KEY (
			petNumber -- petNumber
		);

ALTER TABLE tbl_user_pet
	MODIFY COLUMN petNumber INT NOT NULL AUTO_INCREMENT COMMENT 'petNumber';

-- tbl_sitter_service
CREATE TABLE tbl_sitter_service (
	sitterNumber INT         NOT NULL COMMENT 'sitterNumber', -- sitterNumber
	serviceType  VARCHAR(20) NOT NULL COMMENT 'serviceType', -- serviceType
	servicePrice INT         NOT NULL COMMENT 'servicePrice' -- servicePrice
)
COMMENT 'tbl_sitter_service';

-- tbl_sitter_certificate
CREATE TABLE tbl_sitter_certificate (
	sitterNumber    INT         NOT NULL COMMENT 'sitterNumber', -- sitterNumber
	certificateName VARCHAR(40) NOT NULL COMMENT 'certificateName' -- certificateName
)
COMMENT 'tbl_sitter_certificate';

-- tbl_sitter_animalSpec
CREATE TABLE tbl_sitter_animalSpec (
	sitterNumber INT         NOT NULL COMMENT 'sitterNumber', -- sitterNumber
	animalType   VARCHAR(40) NOT NULL COMMENT 'animalType' -- animalType
)
COMMENT 'tbl_sitter_animalSpec';

-- tbl_review
CREATE TABLE tbl_review (
	reviewNumber  INT           NOT NULL COMMENT 'reviewNumber', -- reviewNumber
	sitterNumber  INT           NULL     COMMENT 'sitterNumber', -- sitterNumber
	bookingNumber INT           NULL     COMMENT 'bookingNumber', -- bookingNumber
	userNumber    INT           NULL     COMMENT 'userNumber', -- userNumber
	serviceScore  INT           NULL     COMMENT 'serviceScore', -- serviceScore
	review        VARCHAR(2000) NULL     COMMENT 'review', -- review
	reviewDate    TIMESTAMP     NULL     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'reviewDate' -- reviewDate
)
COMMENT 'tbl_review';

-- tbl_review
ALTER TABLE tbl_review
	ADD CONSTRAINT PK_tbl_review -- tbl_review 기본키
		PRIMARY KEY (
			reviewNumber -- reviewNumber
		);

ALTER TABLE tbl_review
	MODIFY COLUMN reviewNumber INT NOT NULL AUTO_INCREMENT COMMENT 'reviewNumber';

-- tbl_sitter_service_extra
CREATE TABLE tbl_sitter_service_extra (
	sitterNumber      INT         NOT NULL COMMENT 'sitterNumber', -- sitterNumber
	extraServiceType  VARCHAR(20) NOT NULL COMMENT 'extraServiceType', -- extraServiceType
	extraServiceName  VARCHAR(50) NOT NULL COMMENT 'extraServiceName', -- extraServiceName
	extraSerivcePrice INT         NOT NULL COMMENT 'extraSerivcePrice' -- extraSerivcePrice
)
COMMENT 'tbl_sitter_service_extra';

-- tbl_sitter_schedule
CREATE TABLE tbl_sitter_schedule (
	sitterNumber INT         NOT NULL COMMENT 'sitterNumber', -- sitterNumber
	scheduleType VARCHAR(20) NOT NULL COMMENT 'scheduleType', -- scheduleType
	startHour    TIME        NOT NULL COMMENT 'startHour', -- startHour
	endHour      TIME        NOT NULL COMMENT 'endHour' -- endHour
)
COMMENT 'tbl_sitter_schedule';

-- tbl_booking
CREATE TABLE tbl_booking (
	bookingNumber     INT          NOT NULL COMMENT 'bookingNumber', -- bookingNumber
	userId            VARCHAR(20)  NOT NULL COMMENT 'userId', -- userId
	userNumber        INT          NULL     COMMENT 'userNumber', -- userNumber
	sitterNumber      INT          NULL     COMMENT 'sitterNumber', -- sitterNumber
	bookingDate       TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'bookingDate', -- bookingDate
	pickupAddress     VARCHAR(100) NOT NULL COMMENT 'pickupAddress', -- pickupAddress
	bookingAddress    VARCHAR(100) NOT NULL COMMENT 'bookingAddress', -- bookingAddress
	ServicePrice      INT          NOT NULL COMMENT 'ServicePrice', -- ServicePrice
	extraServicePrice INT          NOT NULL COMMENT 'extraServicePrice', -- extraServicePrice
	toralPrice        INT          NOT NULL COMMENT 'toralPrice', -- toralPrice
	progressState     VARCHAR(20)  NOT NULL COMMENT 'progressState' -- progressState
)
COMMENT 'tbl_booking';

-- tbl_booking
ALTER TABLE tbl_booking
	ADD CONSTRAINT PK_tbl_booking -- tbl_booking 기본키
		PRIMARY KEY (
			bookingNumber -- bookingNumber
		);

ALTER TABLE tbl_booking
	MODIFY COLUMN bookingNumber INT NOT NULL AUTO_INCREMENT COMMENT 'bookingNumber';

-- tbl_booking_schedule
CREATE TABLE tbl_booking_schedule (
	bookingNumber INT                NOT NULL COMMENT 'bookingNumber', -- bookingNumber
	COL2          <데이터 타입 없음> NULL     COMMENT 'title', -- title
	startHour     TIME               NOT NULL COMMENT 'start', -- start
	endHour       TIME               NOT NULL COMMENT 'end', -- end
	COL3          <데이터 타입 없음> NULL     COMMENT 'description' -- description
)
COMMENT 'tbl_booking_schedule';

-- tbl_booking_schedule
ALTER TABLE tbl_booking_schedule
	ADD CONSTRAINT PK_tbl_booking_schedule -- tbl_booking_schedule 기본키
		PRIMARY KEY (
			bookingNumber -- bookingNumber
		);

-- tbl_booking_service
CREATE TABLE tbl_booking_service (
	bookingNumber INT         NOT NULL COMMENT 'bookingNumber', -- bookingNumber
	serviceType   VARCHAR(20) NOT NULL COMMENT 'serviceType', -- serviceType
	serviceName   VARCHAR(50) NOT NULL COMMENT 'serviceName', -- serviceName
	servicePrice  INT         NOT NULL COMMENT 'servicePrice' -- servicePrice
)
COMMENT 'tbl_booking_service';

-- tbl_booking_service_extra
CREATE TABLE tbl_booking_service_extra (
	bookingNumber     INT         NOT NULL COMMENT 'bookingNumber', -- bookingNumber
	extraServiceType  VARCHAR(20) NOT NULL COMMENT 'extraServiceType', -- extraServiceType
	extraServiceName  VARCHAR(50) NOT NULL COMMENT 'extraServiceName', -- extraServiceName
	extraSerivcePrice INT         NOT NULL COMMENT 'extraSerivcePrice' -- extraSerivcePrice
)
COMMENT 'tbl_booking_service_extra';

-- tbl_payment
CREATE TABLE tbl_payment (
	paymentNumber INT         NOT NULL COMMENT 'paymentNumber', -- paymentNumber
	bookingNumber INT         NOT NULL COMMENT 'bookingNumber', -- bookingNumber
	paymentDate   TIMESTAMP   NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'paymentDate', -- paymentDate
	paymentType   VARCHAR(20) NOT NULL COMMENT 'paymentType', -- paymentType
	paymentPrice  INT         NOT NULL COMMENT 'paymentPrice' -- paymentPrice
)
COMMENT 'tbl_payment';

-- tbl_payment
ALTER TABLE tbl_payment
	ADD CONSTRAINT PK_tbl_payment -- tbl_payment 기본키
		PRIMARY KEY (
			paymentNumber -- paymentNumber
		);

ALTER TABLE tbl_payment
	MODIFY COLUMN paymentNumber INT NOT NULL AUTO_INCREMENT COMMENT 'paymentNumber';

-- tbl_booking_schedule_detail
CREATE TABLE tbl_booking_schedule_detail (
	bookingNumber INT         NULL COMMENT 'bookingNumber', -- bookingNumber
	scheduleType  VARCHAR(20) NULL COMMENT 'scheduleType', -- scheduleType
	startHour     TIME        NULL COMMENT 'startHour', -- startHour
	endHour       TIME        NULL COMMENT 'endHour' -- endHour
)
COMMENT 'tbl_booking_schedule_detail';

-- tbl_sitter
ALTER TABLE tbl_sitter
	ADD CONSTRAINT FK_tbl_user_TO_tbl_sitter -- tbl_user -> tbl_sitter
		FOREIGN KEY (
			userNumber, -- userNumber
			userId      -- userId
		)
		REFERENCES tbl_user ( -- tbl_user
			userNumber, -- userNumber
			userId      -- userId
		);

-- tbl_user_pet
ALTER TABLE tbl_user_pet
	ADD CONSTRAINT FK_tbl_user_TO_tbl_user_pet -- tbl_user -> tbl_user_pet
		FOREIGN KEY (
			userNumber, -- userNumber
			userId      -- userId
		)
		REFERENCES tbl_user ( -- tbl_user
			userNumber, -- userNumber
			userId      -- userId
		);

-- tbl_sitter_service
ALTER TABLE tbl_sitter_service
	ADD CONSTRAINT FK_tbl_sitter_TO_tbl_sitter_service -- tbl_sitter -> tbl_sitter_service
		FOREIGN KEY (
			sitterNumber -- sitterNumber
		)
		REFERENCES tbl_sitter ( -- tbl_sitter
			sitterNumber -- sitterNumber
		);

-- tbl_sitter_certificate
ALTER TABLE tbl_sitter_certificate
	ADD CONSTRAINT FK_tbl_sitter_TO_tbl_sitter_certificate -- tbl_sitter -> tbl_sitter_certificate
		FOREIGN KEY (
			sitterNumber -- sitterNumber
		)
		REFERENCES tbl_sitter ( -- tbl_sitter
			sitterNumber -- sitterNumber
		);

-- tbl_sitter_animalSpec
ALTER TABLE tbl_sitter_animalSpec
	ADD CONSTRAINT FK_tbl_sitter_TO_tbl_sitter_animalSpec -- tbl_sitter -> tbl_sitter_animalSpec
		FOREIGN KEY (
			sitterNumber -- sitterNumber
		)
		REFERENCES tbl_sitter ( -- tbl_sitter
			sitterNumber -- sitterNumber
		);

-- tbl_review
ALTER TABLE tbl_review
	ADD CONSTRAINT FK_tbl_booking_TO_tbl_review -- tbl_booking -> tbl_review
		FOREIGN KEY (
			bookingNumber -- bookingNumber
		)
		REFERENCES tbl_booking ( -- tbl_booking
			bookingNumber -- bookingNumber
		);

-- tbl_review
ALTER TABLE tbl_review
	ADD CONSTRAINT FK_tbl_sitter_TO_tbl_review -- tbl_sitter -> tbl_review
		FOREIGN KEY (
			sitterNumber -- sitterNumber
		)
		REFERENCES tbl_sitter ( -- tbl_sitter
			sitterNumber -- sitterNumber
		);

-- tbl_sitter_service_extra
ALTER TABLE tbl_sitter_service_extra
	ADD CONSTRAINT FK_tbl_sitter_TO_tbl_sitter_service_extra -- tbl_sitter -> tbl_sitter_service_extra
		FOREIGN KEY (
			sitterNumber -- sitterNumber
		)
		REFERENCES tbl_sitter ( -- tbl_sitter
			sitterNumber -- sitterNumber
		);

-- tbl_sitter_schedule
ALTER TABLE tbl_sitter_schedule
	ADD CONSTRAINT FK_tbl_sitter_TO_tbl_sitter_schedule -- tbl_sitter -> tbl_sitter_schedule
		FOREIGN KEY (
			sitterNumber -- sitterNumber
		)
		REFERENCES tbl_sitter ( -- tbl_sitter
			sitterNumber -- sitterNumber
		);

-- tbl_booking
ALTER TABLE tbl_booking
	ADD CONSTRAINT FK_tbl_user_TO_tbl_booking -- tbl_user -> tbl_booking
		FOREIGN KEY (
			userNumber, -- userNumber
			userId      -- userId
		)
		REFERENCES tbl_user ( -- tbl_user
			userNumber, -- userNumber
			userId      -- userId
		);

-- tbl_booking
ALTER TABLE tbl_booking
	ADD CONSTRAINT FK_tbl_sitter_TO_tbl_booking -- tbl_sitter -> tbl_booking
		FOREIGN KEY (
			sitterNumber -- sitterNumber
		)
		REFERENCES tbl_sitter ( -- tbl_sitter
			sitterNumber -- sitterNumber
		);

-- tbl_booking_schedule
ALTER TABLE tbl_booking_schedule
	ADD CONSTRAINT FK_tbl_booking_TO_tbl_booking_schedule -- tbl_booking -> tbl_booking_schedule
		FOREIGN KEY (
			bookingNumber -- bookingNumber
		)
		REFERENCES tbl_booking ( -- tbl_booking
			bookingNumber -- bookingNumber
		);

-- tbl_booking_service
ALTER TABLE tbl_booking_service
	ADD CONSTRAINT FK_tbl_booking_TO_tbl_booking_service -- tbl_booking -> tbl_booking_service
		FOREIGN KEY (
			bookingNumber -- bookingNumber
		)
		REFERENCES tbl_booking ( -- tbl_booking
			bookingNumber -- bookingNumber
		);

-- tbl_booking_service_extra
ALTER TABLE tbl_booking_service_extra
	ADD CONSTRAINT FK_tbl_booking_TO_tbl_booking_service_extra -- tbl_booking -> tbl_booking_service_extra
		FOREIGN KEY (
			bookingNumber -- bookingNumber
		)
		REFERENCES tbl_booking ( -- tbl_booking
			bookingNumber -- bookingNumber
		);

-- tbl_payment
ALTER TABLE tbl_payment
	ADD CONSTRAINT FK_tbl_booking_TO_tbl_payment -- tbl_booking -> tbl_payment
		FOREIGN KEY (
			bookingNumber -- bookingNumber
		)
		REFERENCES tbl_booking ( -- tbl_booking
			bookingNumber -- bookingNumber
		);

-- tbl_booking_schedule_detail
ALTER TABLE tbl_booking_schedule_detail
	ADD CONSTRAINT FK_tbl_booking_schedule_TO_tbl_booking_schedule_detail -- tbl_booking_schedule -> tbl_booking_schedule_detail
		FOREIGN KEY (
			bookingNumber -- bookingNumber
		)
		REFERENCES tbl_booking_schedule ( -- tbl_booking_schedule
			bookingNumber -- bookingNumber
		);