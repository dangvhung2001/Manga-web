Chạy câu lệnh thêm vào csdl role 
INSERT INTO Role (role_name) VALUES ('ADMIN');
INSERT INTO Role (role_name) VALUES ('SUB_ADMIN');
INSERT INTO Role (role_name) VALUES ('TEACHER');
 
hoặc 

INSERT INTO Role (role_name) VALUES (0); -- ADMIN
INSERT INTO Role (role_name) VALUES (1); -- SUB_ADMIN
INSERT INTO Role (role_name) VALUES (2); -- TEACHER
