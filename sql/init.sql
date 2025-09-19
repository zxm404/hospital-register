-- 号源表
CREATE TABLE number_source (
  dept_id   VARCHAR(20)  NOT NULL COMMENT '科室编号',
  date      DATE         NOT NULL COMMENT '日期',
  left_num  INT          NOT NULL COMMENT '剩余号数',
  PRIMARY KEY (dept_id, date)
);

-- 订单表
CREATE TABLE `order` (
  order_id     BIGINT       AUTO_INCREMENT PRIMARY KEY,
  patient_id   BIGINT       NOT NULL COMMENT '患者id',
  dept_id      VARCHAR(20)  NOT NULL COMMENT '科室',
  date         DATE         NOT NULL COMMENT '挂号日期',
  status       VARCHAR(20)  NOT NULL DEFAULT 'UNPAID' COMMENT 'UNPAID/PAID/CANCEL',
  expire_time  DATETIME     NOT NULL COMMENT '过期时间'
);