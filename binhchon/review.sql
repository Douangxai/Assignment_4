CREATE TABLE IF NOT EXISTS `binhchon` (
 `idBC` int(11) NOT NULL AUTO_INCREMENT,
 `MoTa` varchar(255) NOT NULL,
 `idLT` int(11) NOT NULL,
 `SoLanChon` int(11) NOT NULL,
 `AnHien` bit(1) NOT NULL,
 `ThuTu` int(11),
 PRIMARY KEY (`idBC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `binhchon` (`idBC`, `MoTa`, `idLT`, `SoLanChon`, `AnHien`, `ThuTu`) VALUES
(1, 'Bạn nghĩ hocweb.com.vn có giúp bạn học tập tốt hơn không?', 1, 10, 1, 0),
(2, 'Bạn dự đoán Phương Mỹ Chì có đoạt được giải The Voice năm nay không?',  1, 2, 1, 0),
(3, 'Bạn thích làm gì trong các nghề dưới đây?',  1, 1, 1, 0),
(4, 'Bạn sẽ cho con làm gì trong kỳ nghỉ hè này?', '', '', '', '');

CREATE TABLE IF NOT EXISTS `phuongan` (
 `idPA` int(11) NOT NULL AUTO_INCREMENT,
 `Mota` varchar(255) NOT NULL,
 `SoLanChon` int(11) NOT NULL,
 `idBC` int(11) NOT NULL,
 PRIMARY KEY (`idPA`),
 FOREIGN KEY (idBC) REFERENCES binhchon(idBC)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

INSERT INTO `phuongan` (`idPA`, `Mota`, `SoLanChon`, `idBC`) VALUES
(1, 'Là nơi để sinh viên có thể tự học CNTT tốt nhất', 20, 1),
(2, 'Nội dung không phong phú lắm', 5, 1),
(3, 'Làm công chức nhà nước', 0, 3),
(4, 'Làm cho các công ty', 0, 3),
(5, 'Làm trong các cơ quan nghiên cứu', 0, 3),
(6, 'Các lĩnh vực khác', 1, 3),
(7, 'Chất lượng thì cũng bình thường thôi', 2, 1),
(8, 'Chắc chắn đoạt giải Nhất', 2, 2),
(9, 'Hát dỡ quá, rớt chắc luôn', 0, 2),
(10, 'Đi học thêm', 0, 4),
(11, 'Chơi ở nhà', 0, 4),
(12, 'Đi du lịch', 0, 4);