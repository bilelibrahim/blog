DROP TABLE POST IF EXISTS;

CREATE TABLE POST (
  id BIGINT GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) NOT NULL,
  name VARCHAR(100) NOT NULL,
  resume VARCHAR(4000) NOT NULL,
  publishDate DATETIME,
  content VARCHAR(65535) NOT NULL,
  userName VARCHAR(100) NOT NULL,
  PRIMARY KEY(id)
);

DROP TABLE COMMENT IF EXISTS;

CREATE TABLE COMMENT(
  id BIGINT GENERATED BY DEFAULT AS IDENTITY (START WITH 1, INCREMENT BY 1) NOT NULL,
  userName VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  content VARCHAR(4000) NOT NULL,
  postId BIGINT NOT NULL,
  CONSTRAINT FK_Comment_postId FOREIGN KEY (postId) REFERENCES Post(id),
  PRIMARY KEY(id)

)