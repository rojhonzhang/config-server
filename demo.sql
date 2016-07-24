drop TABLE demo_user;
create TABLE demo_user(
  uid bigint not null PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
  user_name VARCHAR(64) not null COMMENT '用户账号',
  password_hash VARCHAR(100) not null COMMENT '用户密码',
  user_email VARCHAR(64) null COMMENT '用户电子邮件',
  user_tel VARCHAR(20) null COMMENT '手机号码',
  user_status int(1) null COMMENT '状态',
  created_dt int(11) null COMMENT '创建时间'
);

INSERT INTO demo_user(user_name, password_hash, user_email, user_tel, user_status, created_dt)
    VALUES ('admin','$2a$10$ahcEhdzI3fRGN9UfvuwsGelD/qv2GkvYm5WJUSUDnDa9JaoO4sFKm','admin@tom.com','18617126721','1',unix_timestamp());


drop TABLE demo_order;
create TABLE demo_order(
  uid bigint not null PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
  order_sid VARCHAR(64) not null COMMENT '订单号',
  user_name VARCHAR(100) not null COMMENT '购买用户',
  user_tel VARCHAR(20) null COMMENT '手机号码',
  user_address VARCHAR(200) null COMMENT '地址',
  total_Amount bigint null COMMENT '金额',
  created_dt int(11) null COMMENT '创建时间'
);

INSERT INTO demo_order(order_sid, user_name, user_tel, user_address, total_Amount, created_dt)
    VALUES ('001-2658545454455','刘强','18617126721','广东省深圳市南山区',11000,unix_timestamp());

drop TABLE demo_product;
create TABLE demo_product(
  uid bigint not null PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
  product_name VARCHAR(100) not null COMMENT '商品名称',
  product_address VARCHAR(200) null COMMENT '商品产地',
  product_Amount bigint null COMMENT '商品金额',
  created_dt int(11) null COMMENT '创建时间'
);


INSERT INTO demo_product(product_name, product_address, product_Amount, created_dt)
    VALUES ('红燕麦子','广东省深圳市',100,unix_timestamp());


drop TABLE demo_mg;
create TABLE demo_mg(
  uid bigint not null PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
  mg_name VARCHAR(100) not null COMMENT '渠道商名称',
  mg_address VARCHAR(200) null COMMENT '渠道商地址',
  created_dt int(11) null COMMENT '创建时间'
);

INSERT INTO demo_mg(mg_name, mg_address, created_dt)
    VALUES ('渠道商1','广东省深圳市',unix_timestamp());


drop TABLE demo_dit;
create TABLE demo_dit(
  uid bigint not null PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
  dit_name VARCHAR(100) not null COMMENT '字典名称',
  dit_value VARCHAR(200) null COMMENT '字典值',
  dit_code VARCHAR(30) null COMMENT '字典编码',
  created_dt int(11) null COMMENT '创建时间'
);

INSERT INTO demo_dit(dit_name, dit_value,dit_code, created_dt)
    VALUES ('科学','01','001',unix_timestamp());
