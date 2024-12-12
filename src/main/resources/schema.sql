CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
DROP TABLE IF EXISTS CARD CASCADE;
DROP TABLE IF EXISTS RETRO_BOARD CASCADE;
CREATE TABLE CARD
(
    ID UUID DEFAULT uuid_generate_v4() NOT NULL,
    CARD_TYPE VARCHAR(5) NOT NULL,
    COMMENT VARCHAR(255),
    RETRO_BOARD_ID UUID,
    PRIMARY KEY (ID)
);
CREATE TABLE RETRO_BOARD
(
    ID UUID DEFAULT uuid_generate_v4() NOT NULL,
    NAME VARCHAR(255),
    PRIMARY KEY (ID)
);
ALTER TABLE IF EXISTS CARD
    ADD CONSTRAINT RETRO_BOARD_CARD FOREIGN KEY (RETRO_BOARD_ID) REFERENCES RETRO_BOARD;