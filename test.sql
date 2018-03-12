-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 04, 2018 lúc 01:54 SA
-- Phiên bản máy phục vụ: 5.7.14
-- Phiên bản PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `test`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `status`) VALUES
(2, 'Công Nghệ', 1),
(3, 'Bóng Đá', 1),
(4, 'Tản Mạn', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `images` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `content`, `datetime`, `status`, `user_id`, `category_id`, `images`) VALUES
(46, 'Bộ tranh vẽ đội tuyển U23 Việt Nam bằng bút chì gây sốt', 'Một họa sĩ trẻ ở Đà Nẵng vừa vẽ lại toàn bộ chân dung của đội tuyển U-23 Việt Nam trong bộ tranh có tên "Cảm xúc U23 Việt Nam".', '"Cảm xúc U23 Việt Nam” là cái tên mà tác giả của bộ tranh - anh Phạm Bảo Hòa (quê ở Quảng Bình, hiện làm thiết kế cho một công ty tại Đà Nẵng) đặt cho album anh vẽ chân dung về các cầu thủ U23 Việt Nam.\r\n\r\nBảo Hòa cho biết anh là người đam mê thể thao, đặc biệt là bóng đá nên luôn cổ vũ hết mình cho đội tuyển Việt nam. Với thành tích vừa qua của U23 Việt Nam, anh quyết tâm vẽ chân dung các cầu thủ và HLV như một lời tri ân với tinh thần của cả đội.\r\n\r\nNhững nét vẽ đầu tiên mà anh Bảo Hòa là vẽ chân dung của HLV Park Hang-seo ngay sau vòng bảng, khi U23 xuất sắc thắng Iraq, giành tấm vé vào bán kết. Bảo Hòa nói thêm rằng anh yêu thích cả đội bóng vì bóng đá là môn thể thao của cả tập thể nhưng hai cầu thủ anh ấn tượng nhất là Quang Hải và thủ môn Bùi Tiến Dũng. Sau bức tranh về HLV Park, anh đã vẽ tiếp chân dung của hai cầu thủ này.\r\n\r\n“Càng vào trong thấy cả đội đá càng hay, quá cảm xúc nên tôi quyết định vẽ nguyên cả đội. Xưa tới giờ tôi chưa xem trận banh nào kịch tính và cảm xúc thế, trận đá với Iraq đó” - anh Hòa chia sẻ.\r\n\r\nRồi cứ thế anh vẽ hết người này đến người khác. Mỗi bức tranh, anh Hòa mất khoảng 1-2 giờ đồng hồ, có hôm vẽ đến khuya vì đi làm về muộn. Cảm hứng để anh vẽ những bức chân dung sống động là anh vừa xem trận đấu đang diễn ra vừa vẽ để thể hiện được thần thái của mỗi cầu thủ.\r\n\r\nTác giả bộ tranh tiết lộ vì thời gian gấp nên anh mới vẽ được toàn bộ cầu thủ thi đấu chính thức của U23 Việt Nam và một số cầu thủ dự bị. Anh Hòa cho hay các cầu thủ còn lại của đội U23 Việt Nam như Trọng Đại, Thái Quý, Châu Ngọc Quang và Đặng Ngọc Tuấn anh đang lên kế hoạch vẽ trong thời gian tới...\r\n\r\nDưới đây là chân dung bằng chì các cầu thủ U23 Việt Nam qua nét vẽ của anh Phạm Bảo Hòa:', '2018-01-31 15:42:02', 1, 4, 3, NULL),
(47, 'Tottenham - Rochdale: Hat-trick 12 phút, siêu đại tiệc 7 bàn', '(Video bóng đá, kết quả bóng đá, Tottenham - Rochdale, đá lại vòng 5 FA Cup) Giống với trận "lượt đi", cuộc tái đấu giữa hai đội tại Wembley khiến người hâm mộ ngây ngất với quá nhiều bàn thắng.\r\n\r\n', 'Harry Kane và Dele Alli được nghỉ ngơi chờ trận đấu cuối tuần gặp Huddersfield tại Premier League. Thế nhưng những cầu thủ thay thế đã làm quá tốt nhiệm vụ. Llorente đã chứng minh giá trị khi vẫn là "trọng pháo" trước khung thành đối phương.\r\n\r\nRochdale tiếp tục gây bất ngờ khi chơi giằng co trong hiệp 1, Son Heung-Min mở tỷ số phút 23 nhưng đến phút 31 đội khách đã kịp gỡ hòa. Tuy nhiên bước sang hiệp 2, thế trận hoàn toàn khác biệt bởi phong độ chói sáng của Llorente. Chỉ trong vòng 12 phút, tiền đạo người Tây Ban Nha đã lập cú hat-trick nâng tỷ số lên 4-1.\r\n\r\nSau đó, Rochdale thực sự vỡ trận. Họ để Tottenham thoải mái bắn phá. Son Heung-Min có thêm một bàn thắng trước khi cầu thủ trẻ vào sân thay người Kyle Walker-Peters ấn định thắng lợi 6-1 ở phút bù giờ thứ 3.\r\n\r\nVới kết quả này, Tottenham đã giành vé vào tứ kết FA Cup, đối đầu Swansea trên sân khách ngày 17/03 tới đây.\r\n\r\nChung cuộc: Tottenham 6-1 Rochdale (H1: 1-1)\r\n\r\nGhi bàn:\r\n\r\nTottenham: Son Heung-Min (23\', 65\'), Llorente (47\', 53\', 59\'), Walker-Peters (90\'+3\')\r\n\r\nRochdale: Humphrys (31\')\r\n\r\nĐội hình ra sân\r\n\r\nTottenham: Vorm, Foyth, Trippier, Rose, Dier, Winks, Sissoko, Lamela, Son Heung-Min, Moura, Llorente\r\n\r\nRochdale: Lillis, McNulty, Delaney, McGahey, Done, Rafferty, Camps, Kitchung, Cannon, Henderson, Humphrys', '2018-03-01 02:10:35', 1, 4, 3, 'bongda.jpg'),
(53, 'Arsenal - Man City: Phạt đền hỏng ăn, ác mộng kinh hoàng', '(Video bóng đá, kết quả bóng đá Arsenal - Man City, vòng 28 Ngoại hạng Anh) Quả phạt đền hỏng ăn đã nhấn chìm cả đội vào cơn ác mộng.\r\n            \r\n            ', 'Arsenal nhập cuộc tưng bừng khí thế. Với bộ tứ tấn công, "Pháo thủ" liên tục bắn phá khung thành Ederson. Thế nhưng Man City mới là đội có niềm vui mở điểm. Từ một pha tăng tốc của Sane, Bernando nhận bóng rồi xử lý quá khéo léo hạ gục Cech.\r\n\r\nNhận bàn thua sớm, Arsenal say đòn và tiếp tục đẩy cao đội hình. Man City đặc biệt ưa thích thế trận này và liên tiếp tung đòn trừng phạt. Từ phút 28 đến 33, lần lượt David Silva rồi Sane đều nổ súng với những cú đá cận thành khá dễ dàng.\r\n\r\nBước sang hiệp 2, Arsenal cố gắng duy trì sức ép. Những nỗ lực của đội chủ nhà đã được đền đáp với quả phạt đền phút 53. Thế nhưng Aubameyang đã quá căng thẳng, để Ederson đoán được ý đồ sút và cản phá thành công.\r\n\r\nSau tình huống đó, tinh thần của Arsenal xuống dốc. Họ thi đấu vật vờ đến hết trận. Man City cũng không muốn "xuống tay" nên tỷ số 3-0 được giữ nguyên. Với chiến thắng này, thầy trò Guardiola có 75 điểm sau 28 trận, Arsenal đã kém tốp 4 đến 10 điểm.', '2018-03-01 21:13:39', 1, 4, 3, 'man-cty.jpg'),
(57, 'a', 'b\r\n            \r\n            ', 'adbc', '2018-03-03 00:11:01', 1, 6, 2, ''),
(58, 'Lộ giá bán và cấu hình bộ đôi Sony Xperia XZ2 và Xperia XZ2 Compact', 'Hai chiếc điện thoại thông minh cao cấp của Sony sẽ rẻ hơn nhiều so với các sản phẩm sắp tới của Samsung, Galaxy S9 và S9 Plus.\r\n            \r\n            ', 'Mô hình Xperia XZ2 đắt nhất trong số hai chiếc điện thoại sắp tới của Sony, được trang bị màn hình lớn 5,7 inch với lớp phủ thủy tinh Corning Gorilla 5 và tỷ lệ màn hình 18: 9. Chiếc điện thoại này sẽ được trang bị bộ vi xử lý Qualcomm Snapdragon 845, bộ nhớ RAM 4 GB và bộ nhớ trong 64 GB.\r\n\r\nLộ giá bán và cấu hình bộ đôi Sony Xperia XZ2 và Xperia XZ2 Compact - 1\r\n\r\nSony Xperia XZ2 và Xperia XZ2 Compact lộ diện\r\n\r\nMô hình rẻ hơn và nhỏ hơn nhiều, Xperia XZ2 Compact, sẽ sở hữu một phần cứng tương tự, nhưng với màn hình 5 inch với độ phân giải FHD + và được bảo vệ bởi kính cường lực Gorilla Glass 5. Ngoài ra, cả hai chiếc điện thoại thông minh Xperia của Sony đều không có jack cắm âm thanh 3.5mm, cảm biến vân tay đã di chuyển về phía sau. Ngoài kích thước, hai điện thoại này dường như không nhiều sự khác biệt.\r\n\r\nXperia XZ2 sẽ có giá tương đương 799 Euro (22,3 triệu đồng), trong khi Xperia XZ2 Compact chỉ có giá 599 Euro (16,7 triệu đồng). Cả hai thiết bị Sony Xperia đều dự kiến ​​sẽ được ra mắt vào ngày 6/3 tới.', '2018-03-03 00:58:54', 1, 6, 2, 'sony-XZ2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '1',
  `adress` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `email`, `password`, `fullname`, `role`, `status`, `adress`) VALUES
(4, 'Thientong73@gmail.com', '202cb962ac59075b964b07152d234b70', 'thien', 0, 1, ''),
(5, 'thien@gmail.com', '202cb962ac59075b964b07152d234b70', 'Tống Văn Thiện', 0, 1, 'Cẩm Thành'),
(6, 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'Admin', 0, 0, '401 Cây Trâm,Gò Vấp,Tp.HCM');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FK_post_idx` (`post_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FK_user_idx` (`user_id`),
  ADD KEY `FK_category_idx` (`category_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
