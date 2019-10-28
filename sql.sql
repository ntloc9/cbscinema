use cinemadb;


ALTER DATABASE cinemadb CHARACTER SET utf8 COLLATE utf8_general_ci;

INSERT INTO `row` VALUES (1,'A'),(2,'B'),(3,'C'),(4,'D'),(5,'E'),(6,'F'),(7,'G'),(8,'H'),(9,'I'),(10,'J'),(11,'K'),(12,'L'),(13,'M'),(14,'N'),(15,'O'),(16,'P'),(17,'Q'),(18,'R'),(19,'S'),(20,'T'),(21,'U'),(22,'V'),(23,'W'),(24,'Y'),(25,'Z');


ALTER TABLE cinemadb.province CONVERT TO CHARACTER SET utf8;
INSERT INTO `province` VALUES (1,'hcm'),(2,'ha noi'),(3,'Da Nang');


INSERT INTO `seat` VALUES (1,_binary '\0',1),(2,_binary '\0',1),(3,_binary '\0',1),(4,_binary '\0',1),(5,_binary '\0',1),(6,_binary '\0',1),(7,_binary '\0',1),(8,_binary '\0',1),(9,_binary '\0',1),(10,_binary '\0',1),(11,_binary '\0',1),(12,_binary '\0',1),(13,_binary '\0',2),(14,_binary '\0',2),(15,_binary '\0',2),(16,_binary '\0',2),(17,_binary '\0',2),(18,_binary '\0',2),(19,_binary '\0',2),(20,_binary '\0',2),(21,_binary '\0',2),(22,_binary '\0',2),(23,_binary '\0',2),(24,_binary '\0',2),(25,_binary '\0',3),(26,_binary '\0',3),(27,_binary '\0',3),(28,_binary '\0',3),(29,_binary '\0',3),(30,_binary '\0',3),(31,_binary '\0',3),(32,_binary '\0',3),(33,_binary '\0',3),(34,_binary '\0',3),(35,_binary '\0',3),(36,_binary '\0',3),(37,_binary '\0',4),(38,_binary '\0',4),(39,_binary '\0',4),(40,_binary '\0',4),(41,_binary '\0',4),(42,_binary '\0',4),(43,_binary '\0',4),(44,_binary '\0',4),(45,_binary '\0',4),(46,_binary '\0',4),(47,_binary '\0',4),(48,_binary '\0',4),(49,_binary '',5),(50,_binary '',5),(51,_binary '',5),(52,_binary '',5),(53,_binary '',5),(54,_binary '',5),(55,_binary '',5),(56,_binary '',5),(57,_binary '',5),(58,_binary '',5),(59,_binary '',5),(60,_binary '',5),(61,_binary '',6),(62,_binary '',6),(63,_binary '',6),(64,_binary '',6),(65,_binary '',6),(66,_binary '',6),(67,_binary '',6),(68,_binary '',6),(69,_binary '',6),(70,_binary '',6),(71,_binary '',6),(72,_binary '',6),(73,_binary '\0',7),(74,_binary '\0',7),(75,_binary '\0',7),(76,_binary '\0',7),(77,_binary '\0',7),(78,_binary '\0',7),(79,_binary '\0',7),(80,_binary '\0',7),(81,_binary '\0',7),(82,_binary '\0',7),(83,_binary '\0',7),(84,_binary '\0',7),(85,_binary '\0',8),(86,_binary '\0',8),(87,_binary '\0',8),(88,_binary '\0',8),(89,_binary '\0',8),(90,_binary '\0',8),(91,_binary '\0',8),(92,_binary '\0',8),(93,_binary '\0',8),(94,_binary '\0',8),(95,_binary '\0',8),(96,_binary '\0',8),(97,_binary '\0',9),(98,_binary '\0',9),(99,_binary '\0',9),(100,_binary '\0',9),(101,_binary '\0',9),(102,_binary '\0',9),(103,_binary '\0',9),(104,_binary '\0',9),(105,_binary '\0',9),(106,_binary '\0',9),(107,_binary '\0',9),(108,_binary '\0',9),(109,_binary '\0',10),(110,_binary '\0',10),(111,_binary '\0',10),(112,_binary '\0',10),(113,_binary '\0',10),(114,_binary '\0',10),(115,_binary '\0',10),(116,_binary '\0',10),(117,_binary '\0',10),(118,_binary '\0',10),(119,_binary '\0',10),(120,_binary '\0',10);


ALTER TABLE cinemadb.cinema CONVERT TO CHARACTER SET utf8;
INSERT INTO `cinema` VALUES (1,'Tầng 7 | Hùng Vương Plaza 126 Hùng Vương Quận 5 Tp. Hồ Chí Minh','+84 4 6 275 5240','CGV Hùng Vương Plaza',1),(2,'Tầng 1 và 2, Gala Center, số 415, Hoàng Văn Thụ, Phường 2, Quận Tân Bình, TPHCM','1900 6017123124','CGV Hoàng Văn Thụ',1),(3,'Tầng 4, TTTM Vincom Đà Nẵng, đường Ngô Quyền, P.An Hải Bắc, Q.Sơn Trà, TP. Đà Nẵng','+84 4 6 275 5240','CGV Vincom Đà Nẵng',3),(4,'Lầu 3, Pandora City 1/1 Trường Chinh Quận Tân Phú TP. Hồ Chí Minh\n','+84 4 6 275 5240','CGV Pandora City\n',1),(5,'Tầng 3, Trung tâm thương mại Aeon Mall Bình Tân, Số 1 đường số 17A, khu phố 11, phường Bình Trị Đông B, quận Bình Tân, TPHCM','+84 4 6 275 5240','CGV Aeon Bình Tân',1),(6,'Tầng 2 & 3, Trung Tâm Văn Hóa Đa Năng, 62 Trần Quang Khải, P. Tân Định, Q. 1','+84 4 6 275 5240','CGV IMC Trần Quang Khải',1),(7,'Tầng B1 , TTTM Vincom Center Landmark 81, 772 Điện Biên Phủ, P.22, Q. Bình Thạnh, HCM','+84 4 6 275 5240','CGV Vincom Center Landmark 81',1),(8,'Tầng 3, TTTM Satra Củ Chi, Số 1239, Tỉnh Lộ 8, Ấp Thạnh An, Xã Trung An, Huyện Củ Chi, TP.HCM','+84 4 6 275 5240','CGV Satra Củ Chi',1),(9,'Tầng 5, 461 Trương Định, Hoàng Mai, Hà Nội','+84 4 6 275 5240','CGV Trương Định Plaza',2),(10,'Tầng 5 , TTTM Tràng Tiền Plaza 24 Hai Bà Trưng, Q.Hoàn Kiếm, Hà Nội','+84 4 6 275 5240','CGV Tràng Tiền Plaza',2),(11,'Tầng B2, TTTM Vincom Royal City, 72A Nguyễn Trãi, Q. Thanh Xuân, Tp. Hà Nội','+84 4 6 275 5240','CGV Vincom Royal City',2),(12,'Tầng 5, TTTM Vincom Plaza Long Biên, khu đô thị Vinhomes Riverside, Phường Phúc Lợi, Q. Long Biên, Tp. Hà Nội','+84 4 6 275 5240','CGV Vincom Long Biên',2),(13,'Tòa nhà 21B5, 234 Phạm Văn Đồng, Bắc Từ Liêm, Cổ Nhuế, Từ Liêm, Tp. Hà Nội','+84 4 6 275 5240','CGV Vincom Bắc Từ Liêm',2),(14,'29 Liễu Giai, Q. Ba Đình, Hà Nội','+84 4 6 275 5240','CGV Vincom Metropolis Liễu Giai',2),(15,'255-257 đường Hùng Vương, Q. Thanh Khê, Tp. Đà Nẵng','+84 4 6 275 5240','CGV Vĩnh Trung Plaza',3);


INSERT INTO `screen` VALUES (1,'r?p 1','1'),(2,'r?p 2','2'),(3,'r?p 3','3'),(4,'screen 4','4'),(5,'screen 5','5'),(6,'screen 6','6'),(7,'screen 7','7');


INSERT INTO `cinema_screen` VALUES (1,10,1,1),(2,10,1,2),(3,10,1,3),(4,10,1,4),(5,10,1,5),(6,10,1,6),(7,10,1,7),(8,10,2,1),(9,10,2,2),(10,10,2,3),(11,10,2,4),(12,10,2,5),(13,10,2,7),(14,10,2,7),(15,10,3,1),(16,10,3,2),(17,10,3,3),(18,10,3,4),(19,10,3,5),(20,10,3,6),(21,10,3,7),(22,10,4,1),(23,10,4,2),(24,10,4,3),(25,10,4,4),(26,10,4,5),(27,10,4,6),(28,10,4,7),(29,10,5,1),(30,10,5,2),(31,10,5,3),(32,10,5,4),(33,10,5,5),(34,10,5,6),(35,10,5,7),(36,10,6,1),(37,10,6,2),(38,10,6,3),(39,10,6,4),(40,10,6,5),(41,10,6,6),(42,10,6,7),(43,10,7,1),(44,10,7,2),(45,10,7,3),(46,10,7,4),(47,10,7,5),(48,10,7,6),(49,10,7,7),(50,10,8,1),(51,10,8,2),(52,10,8,3),(53,10,8,4),(54,10,8,5),(55,10,8,6),(56,10,8,7),(57,10,9,1),(58,10,9,2),(59,10,9,3),(60,10,9,4),(61,10,9,5),(62,10,9,6),(63,10,9,7),(64,10,10,1),(65,10,10,2),(66,10,10,3),(67,10,10,4),(68,10,10,5),(69,10,10,6),(70,10,10,7),(71,10,11,1),(72,10,11,2),(73,10,11,3),(74,10,11,4),(75,10,11,5),(76,10,11,6),(77,10,11,7),(78,10,12,1),(79,10,12,2),(80,10,12,3),(81,10,12,4),(82,10,12,5),(83,10,12,6),(84,10,12,7),(85,10,13,1),(86,10,13,2),(87,10,13,3),(88,10,13,4),(89,10,13,5),(90,10,13,6),(91,10,13,7),(92,10,14,1),(93,10,14,2),(94,10,14,3),(95,10,14,4),(96,10,14,5),(97,10,14,6),(98,10,14,7),(99,10,15,1),(100,10,15,2),(101,10,15,3),(102,10,15,4),(103,10,15,5),(104,10,15,6),(105,10,15,7);

INSERT INTO format_type values (1,'2D'),(2,'3D');
ALTER TABLE cinemadb.movie CONVERT TO CHARACTER SET utf8;
ALTER TABLE `cinemadb`.`movie` CHANGE COLUMN `description` `description` TEXT NULL DEFAULT NULL ;
INSERT INTO movie(id, avg_user_rating_star, date_end, description, director, duration, image, language, rating_type, status, thumbnail, title, trailer_link, year, format_type_id, date_release) VALUES (1,8.1,'2019-11-04 00:00:00','Joker từ lâu đã là siêu ác nhân huyền thoại của điện ảnh thế giới. Nhưng có bao giờ bạn tự hỏi, Joker đến từ đâu và điều gì đã biến Joker trở thành biểu tượng tội lỗi của thành phố Gotham? JOKER sẽ là cái nhìn độc đáo về tên ác nhân khét tiếng của Vũ trụ DC – một câu chuyện gốc thấm nhuần, nhưng tách biệt rõ ràng với những truyền thuyết quen thuộc xoay quanh nhân vật mang đầy tính biểu tượng này. Bộ phim đã xuất sắc giành giải thưởng Sư Tử Vàng- Phim Hay Nhất tại LHP Venice lần thứ 76, cùng tràng pháo tay dài 8 phút, và lời khen ngợi dành cho diễn xuất của tài tử Joaquin Phoenix. Một bộ phim không thể bỏ lỡ của tháng 10 năm nay.','Todd Phillips',120,NULL,'English','R',1,'','Joker','https://www.youtube.com/embed/zAGVQLHvwOY','2019',1,'2019-10-04 00:00:00'),(2,6.7,'2019-12-09 00:00:00','Thất Sơn Tâm Linh (tên cũ Thiên Linh Cái) lấy bối cảnh tại một vùng quê nghèo ở miền Tây Nam Bộ trong những năm 1990. Phim kể về câu chuyện mà trong đó, nhân vật trung tâm chính là gã thầy bùa với tham vọng đầy độc ác, tàn bạo. Rắp tâm sở hữu quyền năng kỳ bí, gã đã không e ngại mà ra tay sát hại 4 cô gái trẻ.','Trần Hàm',102,NULL,'Vietnamese','R',1,'','Thất Sơn Tâm Linh - Kumanthong','https://www.youtube.com/embed/GlrCgPsO-sI','2019',1,'2019-10-09 00:00:00'),(3,10,'2019-11-25 00:00:00','Bắc Kim Thang là câu chuyện được xây dựng để phản ánh quan niệm “trọng nam khinh nữ”, một quan niệm đã và đang tồn tại trong nhận thức của người Á Đông, đặc biệt vẫn còn hiện hữu đâu đó tại những miền thôn quê Việt Nam. Không chỉ dựa vào yếu tố con người để thể hiện quan điểm này, bộ phim đã sử dụng nhân vật mang tên “Con bù nhìn” để khai thác câu chuyện ở một góc nhìn mới hơn, khác biệt và táo bạo hơn.','Trần Hữu Tuấn',86,NULL,'Vietnamese','R',1,NULL,'Bắc Kim Thang - Home Sweet Home','https://www.youtube.com/embed/Lc8al6Slh2I','2019',1,'2019-10-25 00:00:00'),(4,10,'2019-11-18 00:00:00','Thời gian trôi qua thật bình yên với Maleficent và Aurora. Mặc dù mối quan hệ của cả hai được tạo dựng từ những tổn thương, thù hận rồi sau đó mới đến tình yêu thương nhưng cuối cùng thì nó cũng đã đơm hoa kết trái. Tuy vậy, xung đột giữa hai giới: loài người và tiên tộc vẫn vẫn luôn hiện hữu. Cuộc hôn nhân vốn bị trì hoãn giữa Aurora và Hoàng tử Phillips chính là cầu nối gắn kết Vương quốc Ulstead và nước láng giềng Moors lại với nhau. Bất ngờ thay, sự xuất hiện của một phe đồng minh hoàn toàn mới sẽ khiến Maleficent và Aurora bị chia cắt về hai chiến tuyến trong trận Đại Chiến. Trận chiến này sẽ thử thách lòng tin lẫn tình cảm của cả hai. Liệu rằng họ có thật sự trở thành một gia đình hay không?','Joachim Rønning',118,NULL,'English','C13',1,NULL,'Tiên Hắc Ám 2 - Maleficent: Mistress of Evil','https://www.youtube.com/embed/n0OFH4xpPr4','2019',1,'2019-10-18 00:00:00'),(5,0,'2019-11-18 00:00:00',NULL,NULL,102,'C:/Uploads/images/movies/5/dioi.jpeg',NULL,NULL,1,'C:/Uploads/images/movies/5/dioithumb.jpg','\'Dì\' ?i, ??ng Có B? - Love and Run','https://youtu.be/fFRKU49EECs',NULL,1,'2019-10-18 00:00:00'),(6,10,'2019-11-18 00:00:00','Câu chuyện xoay quanh về đôi trai tài gái sắc Gatsby (Timothée Chalamet) - chàng trai được sinh ra trong gia đình quyền quý, yêu thích vẻ đẹp cổ điển của thành phố New York và Ashleigh (Elle Fanning) - thiếu nữ xinh đẹp, hồn nhiên ở vùng quê Arizona. Họ đã gặp gỡ và phải lòng nhau bằng một cách nào đó. Chuyện tình của cặp đôi này thật ngọt ngào và lãng mạn làm sao khi Gatsby luôn dành tất cả những điều tốt đẹp nhất cho nửa kia của mình. ','Woody Allen\n',95,NULL,'English','C18',1,NULL,'Chuyện Ngày Mưa Ở New York - A Rainy Day In New York','https://www.youtube.com/embed/QwT1H7QUG5k','2019',1,'2019-10-18 00:00:00'),(7,10,'2019-11-18 00:00:00','Thị trấn Mt. Moriah đang bình yên bỗng chốc xuất hiện nhiều cái chết bí ẩn. Mọi manh mối điều tra dẫn về khu nghĩa trang trong vùng. Liệu rằng đây có phải là sự trả thù cho tội ác năm xưa?\n','Charlie Comparetto',95,NULL,'English','C18',1,NULL,'Nghĩa Địa Ma - Ghost in the Graveyard\n','https://www.youtube.com/embed/N8iORqhXGc0','2019',1,'2019-10-18 00:00:00'),(8,10,'2019-11-11 00:00:00','Gemini Man là một phim hành động mới lạ với sự tham gia của Will Smith trong vai Henry Brogan, một sát thủ ưu tú, người phải đối mặt với kẻ thù tối thượng của mình - một bản sao trẻ hơn của chính mình. Bản sao có tất cả các kỹ năng mà Henry đã trau chuốt trong suốt cuộc đời mình, và dường như có thể dự đoán mọi hành động của anh ta, thiết lập một cuộc đối đầu chết chóc giữa hai sát thủ hàng đầu.','Lý An',112,NULL,'English','C16',1,NULL,'Đàn Ông Song Tử - Gemini Man','https://www.youtube.com/embed/tPc1c8_atkg','2019',1,'2019-10-11 00:00:00'),(9,10,'2019-11-11 00:00:00','Từ khi còn là một chú cún con, Rắc Rối đã sống một cuộc sống xa hoa trong một biệt thự lớn. Ở đó có những bữa ăn trưa với thịt bò thăn và ngủ trên những chiếc khăn lông mềm mại nhất. Nhưng sau khi ông chủ giàu có qua đời, không còn ai quan tâm đến, Rắc Rối thấy mình thật cô đơn và lạc lõng, chú quyết định sẽ bước ra khỏi vùng an toàn và khám phá thế giới bên ngoài căn biệt thự. Tuy nhiên việc sống trong một thế giới thực với một chú chó kiểng như Trouble là một thử thách không hề dễ dàng. Đặc biệt hơn khi những đứa con tham lam của ông chủ phát hiện Rắc Rối chính là chìa khóa dẫn đến kho gia tài của người cha quá cố. Hành trình chạy trốn của Trouble bắt đầu.','Kevin Johnson',88,NULL,'English','P',1,NULL,'Thú Cưng Siêu Quậy - Trouble\n','https://www.youtube.com/embed/oBOofmg_XI4','2019',1,'2019-10-11 00:00:00');


INSERT INTO `movie_session` VALUES (1,'2019-10-23 10:00:00',1,1),(2,'2019-10-23 10:20:00',2,1),(3,'2019-10-23 10:30:00',3,1),(4,'2019-10-23 11:00:00',4,1),(5,'2019-10-23 12:30:00',1,1),(6,'2019-10-23 15:00:00',1,1),(7,'2019-10-23 17:30:00',1,1),(8,'2019-10-23 20:00:00',1,1),(9,'2019-10-23 22:30:00',1,1),(10,'2019-10-23 12:20:00',2,2),(11,'2019-10-23 14:20:00',2,2),(12,'2019-10-23 16:20:00',2,2),(13,'2019-10-23 18:20:00',2,2),(14,'2019-10-23 20:20:00',2,2),(15,'2019-10-23 22:20:00',2,2),(16,'2019-10-23 12:30:00',3,3),(17,'2019-10-23 14:30:00',3,3),(18,'2019-10-23 16:30:00',3,3),(19,'2019-10-23 18:30:00',3,3),(20,'2019-10-23 20:30:00',3,3),(21,'2019-10-23 22:30:00',3,3),(22,'2019-10-23 13:30:00',4,4),(23,'2019-10-23 16:00:00',4,4),(24,'2019-10-23 18:30:00',4,4),(25,'2019-10-23 21:00:00',4,4),(26,'2019-10-23 22:30:00',4,4),(27,'2019-10-24 10:30:00',50,1),(28,'2019-10-24 10:30:00',51,1),(29,'2019-10-24 13:30:00',50,1),(30,'2019-10-24 16:30:00',50,2),(31,'2019-10-20 16:30:00',30,3);


INSERT INTO price(id, description, is_holiday, price, movie_id, format_type_id, title, isvip) VALUES (1,'Ve VIP ngay thuong',_binary '\0',80000,1,1,'WDVIP2D',_binary ''),(2,'Ve thuong ngay thuong',_binary '\0',50000,1,1,'WDNONVIP2D',_binary '\0'),(3,'Ve VIP ngay le + cuoi tuan',_binary '',10000,1,1,'WEVIP2D',_binary ''),(4,'Ve thuong ngay le + cuoi tuan',_binary '',80000,1,1,'WENONVIP2D',_binary '\0'), (5,'Ve VIP ngay thuong',_binary '\0',100000,2,1,'WDVIP2D',_binary ''),(6,'Ve thuong ngay thuong',_binary '\0',80000,2,1,'WDNONVIP2D',_binary '\0'),(7,'Ve VIP ngay le + cuoi tuan',_binary '',150000,2,1,'WEVIP2D',_binary ''),(8,'Ve thuong ngay le + cuoi tuan',_binary '',120000,2,1,'WENONVIP2D',_binary '\0');


INSERT INTO `user` VALUES (2,_binary '','7cacf3df-d6de-43ab-ac3a-b955c54549c3','loc@gmail.com','loc','nguyen','$2a$10$/pSMrg5da2AVxHJm1SDX8.5uMidVEgiZQw9QWFWDGKJBGfLrqfRPe',NULL,NULL),(3,_binary '','a4a67725-fd08-4f97-a59a-42d38fcb63f5','loc1@gmail.com','loc','nguyen','$2a$10$FWW7SvKmwRQXX2NlGHPmm.bnODhu8lKsl991qLQWNWfKOhOnoSrje',NULL,NULL),(5,_binary '','9e484a5f-d1ef-4f41-bdf3-6531bb688cc8','hmvinh91@gmail.com','Hoang','Vinh','$2a$10$t6NgligDZzn3veymFX1jqOilWh2T/yXfW68mT8T/7nXp4gl6DLncq',NULL,NULL);INSERT INTO `actor` VALUES (4,'Happy Polla'),(1,'Ronaldo'),(3,'Tom Cruise'),(2,'Vin Diesel');
INSERT INTO `genre` VALUES (1,'Action'),(2,'Comedy'),(3,'Racing');

INSERT INTO `payment` VALUES (1,NULL,'card',1,'2019-10-26 18:29:28',NULL),(2,NULL,'cash',1,NULL,NULL),(3,NULL,'cash',1,NULL,NULL),(4,NULL,'cash',1,NULL,NULL),(5,NULL,'cash',1,NULL,NULL),(6,NULL,'cash',1,NULL,NULL);

INSERT INTO `sorder` VALUES (18,'2019-10-26 18:29:04','Completed',360000,5,1),(19,'2019-10-26 18:48:08','Pending',100000,5,2),(20,'2019-10-26 18:48:17','Pending',360000,5,3),(21,'2019-10-26 18:48:28','Pending',0,5,4),(23,'2019-10-26 18:48:52','Completed',0,5,5),(24,'2019-10-26 18:49:04','Pending',150000,5,6);

INSERT INTO `ticket` VALUES (32,80000,5,10,18,6,77),(33,80000,5,10,18,6,78),(34,100000,5,10,18,5,66),(35,100000,5,10,18,5,65),(36,50000,5,2,19,2,80),(37,50000,5,2,19,2,79),(38,80000,5,11,20,6,41),(39,80000,5,11,20,6,43),(40,100000,5,11,20,5,54),(41,100000,5,11,20,5,53),(42,80000,5,22,21,6,79),(43,80000,5,22,21,6,78),(44,100000,5,22,21,5,66),(45,100000,5,22,21,5,67),(50,80000,5,26,23,6,40),(51,80000,5,26,23,6,41),(52,80000,5,26,23,6,29),(53,80000,5,26,23,6,28),(54,50000,5,8,24,2,21),(55,50000,5,8,24,2,20),(56,50000,5,8,24,2,20);


INSERT INTO `cinemadb`.`actor_movies` (`actor_id`, `movie_id`) VALUES ('1', '1');
INSERT INTO `cinemadb`.`actor_movies` (`actor_id`, `movie_id`) VALUES ('2', '1');
INSERT INTO `cinemadb`.`actor_movies` (`actor_id`, `movie_id`) VALUES ('3', '1');


INSERT INTO `cinemadb`.`genre_movies` (`genre_id`, `movie_id`) VALUES ('1', '1');
INSERT INTO `cinemadb`.`genre_movies` (`genre_id`, `movie_id`) VALUES ('2', '1');
INSERT INTO `cinemadb`.`genre_movies` (`genre_id`, `movie_id`) VALUES ('2', '2');
