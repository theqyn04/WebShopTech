--create database tech_store

--use tech_store

CREATE TABLE customers (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    full_name NVARCHAR(100) NOT NULL,
    [address] NVARCHAR(255),
    phone_number NVARCHAR(15),
    email NVARCHAR(100),
	username NVARCHAR(50) NOT NULL,
    [password] NVARCHAR(255) NOT NULL,
);

-- data for customer

INSERT INTO customers (full_name, [address], phone_number, email, username, [password]) VALUES
(N'Vũ Ngọc Ánh', N'561 Lạc Long Quân, Quy Nhơn, Bình Định', '0256730866', 'Anhvn@gmail.com', 'Anhvn', '123'),
(N'Đinh Quốc Chương', N'23 Phan Bội Châu, Quy Nhơn, Bình Định', '0256730866', 'Chuongdq@gmail.com', 'Chuongdq', '123'),
(N'Trịnh Minh Dương', N'231 Lê Hồng Phong, Quy Nhơn, Bình Định', '0256730866', 'Duongtm@gmail.com', 'Duongtm', '123'),
(N'Lê Đồng Tâm', N'456 Hùng Vương, Quy Nhơn, Bình Định', '0256730866', 'Tamld@gmail.com', 'Tamld', '123'),
(N'Phan Thu Thảo', N'213 Âu Cơ, Quy Nhơn, Bình Định', '0256730866', 'Thaopt@gmail.com', 'Thaopt', '123'),
(N'Đường Mỹ Hà', N'1112 Hùng Vương, Quy Nhơn, Bình Định', '0256730866', 'Hadm@gmail.com', 'Hadm', '123'),
(N'Nguyễn Tuấn Nghĩa', N'21 Đào Duy Tử, Quy Nhơn, Bình Định', '0256730866', 'Nghiant@gmail.com', 'Nghiant', '123'),
(N'Bùi Quang Tuấn', N'Hẻm 220 Nguyễn Thái Học, Quy Nhơn, Bình Định', '0256730866', 'Tuanbq@gmail.com', 'Tuanbq', '123'),
(N'Trần Thu Ngân', N'38 Võ Lai, Quy Nhơn, Bình Định', '0256730866', 'Ngantt@gmail.com', 'Ngantt', '123'),
(N'Nguyễn Thục Ngân', N'456 Trần Hưng Đạo, Quy Nhơn, Bình Định', '0256730866', 'Ngannt@gmail.com', 'Ngannt', '123'),
(N'Bùi Ngọc Bảo Trân', N'561 Lạc Long Quân, Quy Nhơn', '0256730866', 'Tranbnb@gmail.com', 'Tranbnb', '123'),
(N'Phạm Ngọc Quyền', N'17 Trần Thị Kỷ, thị xã An Nhơn, Bình Định', '0256730866', 'Quyenpn@gmail.com', 'Quyenpn', '123'),
(N'Nguyễn Trung Dũng', N'44 Tăng Bạt Hổ, huyện Tuy Phước, Bình Định', '0256730866', 'Dungnt@gmail.com', 'Dungnt', '123'),
(N'Nguyễn Tấn Kiệt', N'521 Tây Sơn, tp.Quy Nhơn, Bình Định', '0256730866', 'Kietnt@gmail.com', 'Kietnt', '123'),
(N'Nguyễn Dương', N'34 Nguyễn Trân, thị xã Hoài Nhơn, Bình Định', '0256730866', 'Duongn@gmail.com', 'Duongn', '123'),
(N'Đoàn Nguyễn Huyền Trang', N'22 Đào Duy Từ, tp.Quy Nhơn, Bình Định', '0256730866', 'Trangdnh@gmail.com', 'Trangdnh', '123'),
(N'Đào Thanh Trúc', N'307 Nguyễn Thị Minh Khai, tp.Quy Nhơn, Bình Định', '0256730866', 'Trucdt@gmail.com', 'Trucdt', '123'),
(N'Trương Thế Cảnh', N'5D Tăng Bạt Hổ, tp.Quy Nhơn, Bình Định', '0256730866', 'Canhtt@gmail.com', 'Canhtt', '123'),
(N'Phạm Quốc Toàn', N'65 Quang Trung, thị xã Hoài Nhơn, Bình Định', '0256730866', 'Toanpq@gmail.com', 'Toanpq', '123'),
(N'Phạm Thanh Trúc', N'295 Trần Phú, thị xã Hoài Nhơn, Bình Định', '0256730866', 'Trucpt@gmail.com', 'Trucpt', '123'),
(N'Phan Bảo Nhi', N'1126 Hùng Vương, tp.Quy Nhơn, Bình Định', '0256730866', 'Nhipb@gmail.com', 'Nhipb', '123'),
(N'Phan Mai Sơn', N'25 Nguyễn Thị Định, tp.Quy Nhơn, Bình Định', '0256730866', 'Sonpm@gmail.com', 'Sonpm', '123'),
(N'Đặng Ngọc Hưng', N'71 Bùi Thị Xuân, huyện Tây Sơn, Bình Định', '0256730866', 'Hungdn@gmail.com', 'Hungdn', '123'),
(N'Lâm Mỹ Linh', N'94 Mai Xuân Thưởng, tp.Quy Nhơn, Bình Định', '0256730866', 'Linhlm@gmail.com', 'Linhlm', '123'),
(N'Lê Thị Chí Thương', N'85/24 Hoàng Văn Thụ, tp.Quy Nhơn, Bình Định', '0256730866', 'Thuongltc@gmail.com', 'Thuongltc', '123'),
(N'Đặng Kiều Duyên', N'67 Chế Lan Viên, thị xã An Nhơn, Bình Định', '0256730866', 'Duyendk@gmail.com', 'Duyendk', '123'),
(N'Vũ Việt Thắng', N'333 Quang Trung, huyện Phù Cát, Bình Định', '0256730866', 'Thangvt@gmail.com', 'Thangvt', '123'),
(N'Vũ Văn Dũng', N'57A Nguyễn Huệ, tp.Quy Nhơn, Bình Định', '0256730866', 'Dungvv@gmail.com', 'Dungvv', '123'),
(N'Phạm Đức Nghĩa', N'114B 31 tháng 3, tp.Quy Nhơn, Bình Định', '0256730866', 'Nghiapd@gmail.com', 'Nghiapd', '123'),
(N'Lê Uyển Nhi', N'Lô 01 Ngọc Hồi, huyện Tây Sơn, Bình Định', '0256730866', 'Nhilu@gmail.com', 'Nhilu', '123');



CREATE TABLE phone_brand (
    phone_brand_id INT PRIMARY KEY IDENTITY(1,1),
    phone_brand_name NVARCHAR(100) NOT NULL,
    [description] NVARCHAR(MAX)
);

-- insert phone_brand

INSERT INTO phone_brand (phone_brand_name, [description]) VALUES
(N'Iphone', N'iPhone là điện thoại cao cấp chạy trên hệ điều hành iOS, CPU hoàn thiện từ con chip Apple Bionic, Apple A do chính Apple phát triển. Appe iPhone sở hữu bộ nhớ lưu trữ đa dạng, với dung lượng chuẩn 64GB - 128GB và nhiều phiên bản dung lượng nâng cấp khác như 256GB, 512GB, 1TB cho người dùng lựa chọn. Điện thoại Apple thường được trang bị màn hình Retina chất lượng cùng với thiết kế tai thỏ, viên thuốc Dynamic Island độc đáo và nhiều màu sắc ấn tượng như đen, đỏ, xanh, trắng, tím, hồng,...'),
(N'Samsung', N'Samsung là thương hiệu lớn của đa dạng các sản phẩm, trong đó nổi bật là điện thoại. Vậy chính xác điện thoại Samsung gồm những dòng nào, giá bán ra sao? Cùng đánh giá chi tiết các tiêu chí trước khi chọn mua tại Shop ngay nhé!'),
(N'XiaoMi', N'Điện thoại Xiaomi từ khi xuất hiện trên thị trường smartphone, đã dễ dàng chiếm được trái tim của người tiêu dùng bằng sự kết hợp tinh tế giữa hiệu suất ổn định và giá trị vô cùng hấp dẫn. Dòng này không chỉ là sản phẩm công nghệ, mà còn là biểu tượng của sự tiện lợi và sáng tạo, hứa hẹn đem tới trải nghiệm mượt mà, đáp ứng mọi tiêu chí sử dụng. Cùng khám phá thêm về thế hệ smartphone Xiaomi trong bài viết dưới này nhé!'),
(N'Oppo', N'OPPO mới nhất luôn là sự lựa chọn hàng đầu của người dùng bởi sở hữu nhiều tính năng ưu việt tốt, thiết kế đẹp. Ngoài ra, các mẫu điện thoại mới hiện nay còn được săn đón nhiều nhờ vào việc liên tục cải tiến AI mới và cụm camera thiết kế có phần nổi bật hơn trước. Cùng khám phá tất tần tật những nét đổi mới và thông tin của thương hiệu lần này nhé!'),
(N'Sony', N'Điện thoại Sony Xperia thu hút người dùng bằng màn hình chất lượng cao đến 4K UHD và tỷ lệ khung hình 21:9 chuẩn điện ảnh. Ngoài ra, trải nghiệm âm thanh xuất sắc được đảm bảo thông qua giắc cắm tai nghe và bộ mã hóa LDAC. Với camera chất lượng Zeiss, vi xử lý hiện đại, cùng khả năng tiết kiệm năng lượng, Xperia không chỉ là một điện thoại thông minh mà còn là trung tâm giải trí đa phương tiện tối ưu.');



CREATE TABLE phone (
    phone_id INT PRIMARY KEY IDENTITY(1,1),
    phone_name NVARCHAR(100) NOT NULL,
    phone_type_id INT FOREIGN KEY REFERENCES phone_brand(phone_brand_id),
    price DECIMAL(18, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    [description] NVARCHAR(MAX),
    imageURL NVARCHAR(MAX) -- Stores the path to the phone image
);

INSERT INTO phone (phone_name, phone_type_id, price, stock_quantity, [description],	 imageURL) VALUES
(N'iPhone 16 Pro Max 256GB | Chính hãng VN/A', 1, 30990000, 10, N'iPhone 16 Pro Max sở hữu màn hình Super Retina XDR OLED 6.9 inch với công nghệ ProMotion, mang lại trải nghiệm hiển thị mượt mà và sắc nét, lý tưởng cho giải trí và làm việc. Với chipset A18 Pro mạnh mẽ, mẫu iPhone đời mới này cung cấp hiệu suất vượt trội, giúp xử lý mượt mà các tác vụ nặng như chơi game hay edit video. Chiếc điện thoại iPhone 16 mới này còn sở hữu hệ thống camera Ultra Wide 48MP cho khả năng chụp ảnh cực kỳ chi tiết, mang đến chất lượng hình ảnh ấn tượng trong mọi tình huống.', 'img/product_img/iphone-16-pro-max.jpg'),
(N'iPhone 15 128GB | Chính hãng VN/A', 1, 15890000, 15, N'iPhone 15 128GB được trang bị màn hình Dynamic Island kích thước 6.1 inch với công nghệ hiển thị Super Retina XDR màn lại trải nghiệm hình ảnh vượt trội. Điện thoại với mặt lưng kính nhám chống bám mồ hôi cùng 5 phiên bản màu sắc lựa chọn: Hồng, Vàng, Xanh lá, Xanh dương và đen. Camera trên iPhone 15 series cũng được nâng cấp lên cảm biến 48MP cùng tính năng chụp zoom quang học tới 2x. Cùng với thiết kế cổng sạc thay đổi từ lightning sang USB-C vô cùng ấn tượng.', 'img/product_img/iphone-15-plus_1__1.jpg'),
(N'iPhone 15 Pro Max 256GB | Chính hãng VN/A', 1, 27990000, 8, N'iPhone 15 Pro Max sở hữu màn hình Super Retina XDR OLED 6.7 inch tần số quét cao 120Hz sắc nét và mượt mà. Với chipset A17 Pro sản xuất trên tiến trình 3nm, thế hệ iPhone 15 bản Pro Max đảm bảo hiệu năng mạnh mẽ và khả năng tiết kiệm pin tối ưu. Đặc biệt, máy còn sở hữu camera chính 48MP cùng khả năng zoom quang học 5x, giúp iP 15 Pro Max trở thành lựa chọn tuyệt vời cho người đam mê nhiếp ảnh và quay phim chuyên nghiệp.', 'img/product_img/iphone-15-pro-max_3.jpg'),
(N'iPhone 13 128GB | Chính hãng VN/A', 1, 11690000, 8, N'iPhone 13 thường được trang bị chip A15 Bionic mạnh mẽ với 6 nhân CPU và 4 nhân GPU, cung cấp mức hiệu năng vượt trội, giúp xử lý nhanh chóng các tác vụ nặng. Màn hình Super Retina XDR 6.1 inch trên máy cũng được đánh giá cao khi mang tới hình ảnh sắc nét với độ sáng cao, tối ưu hóa trải nghiệm xem nội dung dưới mọi điều kiện ánh sáng. Chưa hết, iPhone13 còn sở hữu hệ thống camera kép 12MP với công nghệ ổn định hình ảnh quang học (OIS) cải thiện khả năng quay film, chụp hình, ngay cả khi đang ở trong môi trường ánh sáng yếu.', 'img/product_img/iphone-13.jpg'),
(N'iPhone 16 Pro 128GB | Chính hãng VN/A', 1, 25290000, 8, N'iPhone 16 Pro chính là thế hệ điện thoại tiếp theo được Apple cho ra mắt vào tháng 9/2024. Với những thay đổi đầy vượt bậc như: camera của chiếc iPhone 16 bản Pro có độ phân giải 48MP, camera Ultra Wide 48MP, camera Telephoto 5x 12MP, dung lượng bộ nhớ trong 128GB và chipset A18 Pro mạnh mẽ. Tất cả những điều trên biến chiếc điện thoại iPhone 16 trở thành một siêu phẩm công nghệ mới.', 'img/product_img/iphone-16-pro_1.jpg'),
(N'iPhone 16 128GB | Chính hãng VN/A', 1, 19190000, 8, N'Điện thoại iPhone 16 bản thường 128GB sở hữu thiết kế khung nhôm, mặt lưng kính pha màu cùng với 5 màu sắc bắt mắt để lựa chọn. Máy với trọng lượng 170g cùng kích thước màn hình 6.1 inch Super Retina XDR, dải màu P3. Với cấu hình từ chip A18 Bionic mới, điện thoại iPhone mới này mang lại hiệu năng ổn định, đáp ứng nhiều nhu cầu dùng.', 'img/product_img/iphone-16-1.jpg'),
(N'iPhone 16e 128GB | Chính hãng VN/A', 1, 16190000, 8, N'iPhone 16e sở hữu màn hình Super Retina XDR 6.1 inch độ phân giải 2532x1170 pixel mang đến trải nghiệm hình ảnh sống động và sắc nét. Con chip Apple A18 cùng Neural Engine 16 lõi cung cấp cho máy khả năng xử lý mạnh mẽ. Đặc biệt, mẫu iPhone mới này còn sở hữu hệ thống camera chính 2 trong 1 độ phân giải 48MP cùng công nghệ Deep Fusion cao cấp.', 'img/product_img/iphone-16e-128gb.jpg'),
(N'Samsung Galaxy S25 Ultra 12GB 256GB', 2, 28990000, 8, N'Samsung S25 Ultra mạnh mẽ với chip Snapdragon 8 Elite For Galaxy mới nhất, RAM 12GB và bộ nhớ trong 256GB-1TB. Hệ thống 3 camera sau chất lượng gồm camera chính 200MP, camera tele 50MP và camera góc siêu rộng 50MP. Thiết kế kính cường lực Corning Gorilla Armor 2 và khung viền Titanium, màn hình Dynamic AMOLED 6.9 inch. Điện thoại này còn có viên pin 5000mAh, hỗ trợ 5G và Galaxy AI ấn tượng, nâng cao trải nghiệm người dùng!', 'img/product_img/dien-thoai-samsung-galaxy-s25-ultra_3__3.jpg'),
(N'Samsung Galaxy S25 256GB', 2, 20290000, 8, N'Samsung S25 thường 256GB trang bị vi xử lý Qualcomm Snapdragon 8 Elite for Galaxy , RAM 12GB, bộ nhớ trong 256GB cùng viên pin Li-ion 4000mAh. Máy sử dụng màn hình AMOLED 120Hz kích thước 6.2 inch với độ phân giải FHD+. Samsung S25 được trang bị 3 ống kính 50MP+10MP+12MP phía sau và camera selfie 12MP phía trước.', 'img/product_img/dien-thoai-samsung-galaxy-s25_1__2.jpg'),
(N'Samsung Galaxy S24 FE 5G 8GB 128GB', 2, 13190000, 8, N'Samsung Galaxy S24 FE trang bị chip Exynos 2400e, dung lượng RAM lên đến 8GB và ROM 128GB, pin 4.700 mAh kèm sạc nhanh đi kèm. Trang bị camera chính 50MP, cùng với camera góc siêu rộng 12MP rõ nét, camera zoom quang rõ nét 3X 8MP. Bên cạnh đó, kết hợp màn hình AMOLED 2X 6.7 inches Full HD+ khi sử dụng.', 'img/product_img/dien-thoai-samsung-galaxy-s24-fe_3__4.jpg'),
(N'Samsung Galaxy S24 Ultra 12GB 256GB', 2, 24890000, 8, N'Samsung S24 Ultra sở hữu AI thông minh, hiệu năng cực đỉnh cũng đa tính năng cao cấp nhất. Đi kèm với đó là những cải tiến tích cực vượt trội hơn về camera, vi xử lý, và tích hợp AI toàn diện, đây là sản phẩm không thể bỏ qua cho người yêu công nghệ. Cùng xem giá bán và đánh giá chi tiết nhất dòng điện thoại này xem có nên mua không ngay nhé!', 'img/product_img/ss-s24-ultra-xam-222.jpg'),
(N'Samsung Galaxy Z Flip6 12GB 256GB', 2, 19490000, 8, N'Samsung Z Flip 6 sở hữu nhiều nâng cấp ấn tượng nhờ được trang bị chip Snapdragon 8 Gen 3 for Galaxy, RAM 12GB, mang lại hiệu năng mạnh mẽ cho đa nhiệm và chơi game. Camera chính 50MP của máy giúp cải thiện khả năng quay chụp, đặc biệt trong môi trường thiếu sáng. Cùng với đó là pin 4.000mAh, hỗ trợ sạc nhanh 25W, giúp kéo dài thời gian sử dụng của người dùng.', 'img/product_img/zflip6.jpg'),
(N'Samsung Galaxy A56 5G 8GB 128GB', 2, 9490000, 8, N'Điện thoại Samsung A56 5G sở hữu màn hình Super AMOLED 6,7 inch độ phân giải FHD+ và tần số quét 120 Hz, đem tới trải nghiệm xem sắc nét và mượt mà. Thiết bị trang bị chip Exynos 1580 tiến trình 4nm, giúp xử lý đa nhiệm nhanh chóng, tối ưu hiệu năng. Viên pin 5000mAh hỗ trợ sạc nhanh 45W cung cấp cho máy thời lượng sử dụng cả ngày dài mà không lo gián đoạn.', 'img/product_img/dien-thoai-samsung-galaxy-a56.1_1.jpg'),
(N'Samsung Galaxy A36 5G 8GB 128GB', 2, 7690000, 8, N'Điện thoại Samsung A36 5G được trang bị chip Snapdragon® 6 Gen 3 Mobile Platform, RAM 8GB và bộ nhớ trong 128GB, kháng bụi, kháng nước đạt chuẩn IP67. Máy Samsung Galaxy A36 gồm 3 camera sau 50MP + 8MP + 5MP, camera trước 12MP, màn hình Super AMOLED 6.7 inch sắc nét độ phân giải FHD+. Máy sở hữu lớp kính Corning Gorilla Glass Victus+ ở màn hình và cả mặt lưng, kích thước sản phẩm 162.9 x 78.2 x 7.4mm.', 'img/product_img/dien-thoai-samsung-galaxy-a36.2.jpg'),
(N'Samsung Galaxy M55 5G 8GB 256GB', 2, 7690000, 8, N'Điện thoại Samsung Galaxy M55 5G 8GB 256GB được trang bị màn hình Super AMOLED Plus 6.7 inch FullHD+, chất lượng sắc nét, mượt mà với tần số quét 120Hz. Sản phẩm Samsung Galaxy M trang bị chip Snapdragon 7 Gen 1 cùng 8GB RAM và 256GB bộ nhớ trong, chạy mượt mà mọi tác vụ. ', 'img/product_img/dien-thoai-samsung-galaxy-m55_2.jpg'),
(N'Xiaomi Redmi Note 14 6GB 128GB', 3, 4590000, 8, N'Redmi note 14 chính hãng ra mắt vào ngày 10/01/2025 tại Việt Nam sở hữu AI mới nhất kèm chip MediaTek Helio G99-Ultra mạnh mẽ đi cùng camera 108MP.', 'img/product_img/dien-thoai-xiaomi-redmi-note-14_2__2.jpg'),
(N'Xiaomi 15 5G 12GB 256GB', 3, 21990000, 8, N'Xiaomi 15 sở hữu màn hình CrystalRes AMOLED 6.36 inch, độ phân giải 1200 x 2670 pixels, hỗ trợ 68 tỷ màu, công nghệ HDR10+ và tốc độ làm mới 120Hz. Máy sử dụng chip Qualcomm Snapdragon® 8 Elite siêu mạnh mẽ, RAM 12GB, bộ nhớ trong 256GB cùng pin 5240mAh. Bên cạnh đó, điện thoại Mi 15 còn hỗ trợ sạc nhanh 90W, camera sau gồm 3 ống kính 50MP, camera trước 32MP.', 'img/product_img/dien-thoai-xiaomi-15_11_.jpg'),
(N'Xiaomi 14T Pro 12GB 512GB', 3, 16490000, 8, N'Xiaomi 14T Pro 5G là một trong những mẫu smartphone cao cấp được mong đợi hàng đầu trong nửa cuối năm 2024. Sau nhiều tin đồn, Xiaomi chính thức ra mắt dòng sản phẩm vào ngày 26/9/2024 tại Berlin và ngày 27/9/2024 tại Việt Nam. Được kế thừa nhiều thành công từ dòng kế nhiệm, dòng kế nhiệm lần này được kỳ vọng là sẽ mang đến nhiều cải tiến đáng giá, đặc biệt là trong hiệu năng và thiết kế.', 'img/product_img/xiaomi_14t_pro_1_.jpg'),
(N'Xiaomi POCO X7 Pro 5G 12GB 256GB', 3, 9190000, 8, N'Điện thoại POCO X7 Pro tích hợp vi xử lý Dimensity 8400-Ultra MediaTek tốc độ đến 3.25GHz, kèm theo RAM LPDDR5X, bộ nhớ chuẩn UFS 4.0 và pin 6000mAh. Hơn thế nữa, chiếc điện thoại này còn nổi bật với màn hình 6.67 inch công nghệ AMOLED CrystalRes. Ngoài ra, máy được thiết kế cải thiện với tính kháng nước và bụi chuẩn IP68.', 'img/product_img/dien-thoai-poco-x7-pro-5g_1_.jpg'),
(N'Xiaomi 14T 12GB 512GB', 3, 12490000, 8, N'Xiaomi 14T 5G là phiên bản điện thoại cận cao cấp được Xiaomi trang bị chip Dimensity 8300 Ultra cùng 12GB RAM để mang tới hiệu suất ấn tượng. Mẫu điện thoại này còn được trang bị bộ 3 ống kính Leica thế hệ mới để nâng cao trải nghiệm nhiếp ảnh. Với màn hình Super AMOLED 6.67 inch sở hữu phần viền siêu mỏng cùng độ nét 1.5K, điện thoại Mi14T sẽ luôn mang tới chất lượng hình ảnh sắc nét, sống động.', 'img/product_img/xiaomi_14t_2_.jpg'),
(N'Xiaomi POCO M6 6GB 128GB', 3, 3060000, 8, N'POCO M6 5G hỗ trợ xử lý đa nhiệm cực mượt cùng lúc nhiều ứng dụng với bộ nhớ RAM lớn cùng chipset Helio G91-Ultra mạnh mẽ hàng đầu. Đi kèm theo đó là màn hình AdaptiveSync 6.79 inches với tần số quét 90Hz, độ sáng tối đa 550 nits và độ phân giải FHD+, đảm bảo chất lượng hiển thị cực nét. Đồng thời, hệ thống máy ảnh trên Xiaomi POCO M6 cũng khá ấn tượng với camera sau 108MP cùng camera trước 13MP đều hỗ trợ quay phim 1080p.', 'img/product_img/poco-m6_1_.jpg'),
(N'OPPO Reno10 Pro+ 5G 12GB 256GB', 4, 10990000, 8, N'OPPO Reno10 Pro Plus 5G chính là phiên bản điện thoại mới nhất trong dòng OPPO Reno và rất được mong đợi. Đây là chiếc điện thoại thông minh có hỗ trợ 5G với những thông số gây ấn tượng mạnh. Cụ thể, Reno10 Pro+ tạo được điểm chú ý đầu tiên từ ngay trong thiết kế của sản phẩm. Những tính năng tuyệt vời được trang bị trên chiếc điện thoại này bao gồm bộ xử lý mạnh mẽ, màn hình lớn sống động và hệ thống 3 camera với độ phân giải rất đáng để mong đợi.', 'img/product_img/oppo-reno10-pro-plus-tim.jpg'),
(N'OPPO FIND N5', 4, 44990000, 8, N'OPPO Find N5 được trang bị CPU Snapdragon 8 Elite mạnh nhất trong dòng điện thoại gập, tích hợp AI đến từ Qualcom cho hiệu năng vận hành mạnh mẽ mà vẫn tối ưu năng lượng tiêu hao. Sản phẩm sở hữu viên pin Silicone-carbon mỏng nhất thế giới, mang lại dung lượng cao 5600mAh. Cụm camera đảm bảo chất lượng ảnh, video được quay chụp sắc nét với màu sắc chân thực.', 'img/product_img/dien-thoai-oppo-find-n5_h_nh_2.jpg'),
(N'OPPO Find X8 16GB 512GB', 4, 21990000, 8, N'Sau bao chờ đợi, OPPO đã thật sự trình làng người dùng với bộ đôi Flagship điện thoại OPPO Find X8 ra mắt tại thị trường Việt Nam vào tháng 11 hứa hẹn sẽ mang đến những cải tiến mới nhất, giá bán có phần dễ tiếp cận hơn so với các mẫu tiền nhiệm trước đây. Cùng với đó, trên dòng điện thoại mới còn được nâng cấp tác vụ AI mới nhất. Cùng khám phá chi tiết hơn về mẫu mới này ngay!', 'img/product_img/dien-thoai-oppo-find-x8-xam-1.jpg'),
(N'OPPO Reno13 F 8GB 256GB', 4, 8490000, 8, N'Điện thoại OPPO Reno13 F sở hữu màn hình AMOLED 6.67 inch với độ phân giải 1080x2400 px, mang lại trải nghiệm hình ảnh sống động cùng tần số quét 120Hz. Kèm theo đó là chipset MediaTek Helio G100 cung cấp hiệu năng mạnh mẽ, hỗ trợ tốt cho các nhu cầu đa nhiệm và chơi game. Camera 50MP trên máy còn cho phép chụp ảnh sắc nét và quay video 4K, đáp ứng mọi yêu cầu về chất lượng hình ảnh và video.', 'img/product_img/dien-thoai-oppo-reno13f-4g_2_.jpg'),
(N'OPPO Reno12 5G 12GB 256GB', 4, 9190000, 8, N'OPPO Reno12 5G với sự hỗ trợ của chip xử lý Chip MediaTek 7300-Energy kết hợp với 12GB RAM cung cấp hiệu năng mượt mà và xử lý đa nhiệm hiệu quả. Sở hữu màn hình 6.7 inches AMOLED 120Hz đã giúp Reno 12 có sức hút hơn khi lướt web kèm pin trâu 50000mAh, cho phép duy trì xử lý công việc xuyên suốt ngày dài.', 'img/product_img/text_ng_n_5__7_70.jpg'),
(N'Sony Xperia 10VI 8GB 128GB', 5, 8290000, 8, N'Sony Xperia 10 VI trang bị card đồ họa GPU Adreno kết hợp chipset cao cấp Snapdragon 6 Gen 1 giúp đem lại hiệu suất mạnh mẽ khi sử dụng. Dung lượng lưu trữ 8GB RAM + 128GB ROM cho phép tải nhiều ứng dụng hay hình ảnh về máy. Camera sau lên đến 48 MP và camera trước 8 MP hỗ trợ khả năng chụp ảnh rõ ràng và ấn tượng hơn. Điện thoại Sony Xperia 10 VI được trang bị dung lượng pin 5000 mAh, giúp thực hiện các hoạt động khác nhau mà không lo nhanh hết pin. ', 'img/product_img/dien-thoai-sony-xperia-10-vi_1_.jpg'),
(N'Sony Xperia 1VI 12GB 256GB', 5, 23490000, 8, N'Sony Xperia 1 VI 12GB 256GB là flagship mới của nhà Sony với chipset Snapdragon 8 Gen 3 tiến trình 4nm, bộ nhớ RAM 12GB và dung lượng lưu trữ 256GB. Màn hình 6.5 inch chất lượng FHD+, tần số quét 120Hz cùng tấm nền OLED chất lượng. Camera chính 48MP với cảm biến Exmor T cùng camera selfie 12mP. Pin lớn tới 5000mAh và 30W công nghệ sạc nhanh Qi cho trải nghiệm thú vị.', 'img/product_img/10_1_.jpg'),
(N'Sony Xperia X Compact', 5, 12490000, 8, N'Sony Xperia X Compact trang bị con chip Qualcomm MSM8956 Snapdragon 650 cùng với bộ nhớ RAM 3GB, bộ nhớ trong 32GB hỗ trợ mở rộng qua thẻ microSDXC. Máy với màn hình kích thước lớn 4.6 inches trên tấm nền IPS LCD mang lại khả năng hiển thị hiệu quả. Cùng với đó, mẫu điện thoại Sony này còn được trang bị camera 23 MP cùng camera selfie 5MP.', 'img/product_img/sony-xperia-x-compact_2_.jpg'),
(N'Xperia 5 V', 5, 21990000, 8, N' Sony Xperia 5V với thiết kế phẳng hiện đại, màn hình OLED tuyệt hảo, chip Snapdragon 8 Gen 2 mạnh mẽ, bộ đôi camera 52MP-12MP chụp ảnh chất lượng cùng viên pin 5000mAh cho trải nghiệm xuyên suốt cả ngày.', 'img/product_img/sony-xperia-5v.jpg'),
(N'Sony Xperia 5 IV', 5, 19890000, 8, N'Sony Xperia 5 IV với thiết kế màn hình rộng lên đến 6.1 inch cùng tấm nền OLED cao cấp cho hình ảnh hiển thị vô cùng chân thật. Màn hình Full HD+ với tần số quét lên đến 120 Hz, dung lượng pin lên đến 5000mAh giúp thời gian sử dụng được lâu hơn.', 'img/product_img/1_245.jpg'),
(N'Sony Xperia XZ3', 5, 12000000, 8, N'Đã khá lâu Sony vắng mặt trên thị trường Smartphone thì nay với sự trở lại của điện thoại Sony Xperia XZ3 Chính hãng cho thấy Sony vẫn đang tích cực cải thiện dòng sản phẩm phân khúc cao cấp của mình. Chiếc XZ3 được xem là bản nâng cấp mạnh mẽ của Xperia XZ2, với nhiều cải thiện và nâng cấp giúp trải nghiệm người dùng tốt hơn.', 'img/product_img/xz3-black.jpg');

CREATE TABLE orders (
    order_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT FOREIGN KEY REFERENCES customers(customer_id),
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(18, 2) NOT NULL,
    [status] NVARCHAR(50) NOT NULL -- e.g., Pending, Completed, Cancelled
);

-- Thêm dữ liệu vào bảng orders (giả sử customer_id từ 1-30)
INSERT INTO orders (customer_id, order_date, total_amount, [status]) VALUES
-- Đơn hàng iPhone
(1, '2024-01-10 09:15:00', 30990000, 'completed'),
(2, '2024-01-11 10:30:00', 15890000, 'completed'),
(3, '2024-01-12 11:45:00', 27990000, 'processing'),
(4, '2024-01-13 14:20:00', 11690000, 'shipped'),
(5, '2024-01-14 15:30:00', 25290000, 'completed'),
(6, '2024-01-15 16:45:00', 19190000, 'cancelled'),

-- Đơn hàng Samsung
(7, '2024-01-16 09:00:00', 28990000, 'completed'),
(8, '2024-01-17 10:15:00', 20290000, 'processing'),
(9, '2024-01-18 11:30:00', 13190000, 'shipped'),
(10, '2024-01-19 14:00:00', 24890000, 'completed'),
(11, '2024-01-20 15:15:00', 19490000, 'completed'),

-- Đơn hàng Xiaomi
(12, '2024-01-21 09:30:00', 4590000, 'completed'),
(13, '2024-01-22 10:45:00', 21990000, 'processing'),
(14, '2024-01-23 11:00:00', 16490000, 'shipped'),
(15, '2024-01-24 14:30:00', 9190000, 'completed'),

-- Đơn hàng OPPO
(16, '2024-01-25 09:15:00', 10990000, 'completed'),
(17, '2024-01-26 10:30:00', 44990000, 'processing'),
(18, '2024-01-27 11:45:00', 21990000, 'shipped'),

-- Đơn hàng Sony
(19, '2024-01-28 14:00:00', 8290000, 'completed'),
(20, '2024-01-29 15:15:00', 23490000, 'completed'),

-- Đơn hàng hỗn hợp nhiều sản phẩm
(21, '2024-01-30 09:00:00', 15890000 + 9490000, 'completed'), -- iPhone 15 + Samsung A56
(22, '2024-01-31 10:15:00', 13190000 + 4590000, 'processing'), -- Samsung S24 FE + Redmi Note 14
(23, '2024-02-01 11:30:00', 30990000 + 20290000, 'shipped'), -- iPhone 16 Pro Max + Samsung S25
(24, '2024-02-02 14:00:00', 27990000 + 10990000, 'completed'), -- iPhone 15 Pro Max + OPPO Reno10
(25, '2024-02-03 15:15:00', 19190000 + 7690000, 'cancelled'), -- iPhone 16 + Samsung A36

-- Đơn hàng gần đây
(1, '2024-02-10 08:30:00', 30990000, 'processing'),
(2, '2024-02-11 09:45:00', 24890000, 'shipped'),
(3, '2024-02-12 10:00:00', 16490000, 'processing'),
(4, '2024-02-13 13:30:00', 21990000, 'completed'),
(5, '2024-02-14 14:45:00', 44990000, 'completed');

CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY IDENTITY(1,1),
    order_id INT FOREIGN KEY REFERENCES orders(order_id),
    phone_id INT FOREIGN KEY REFERENCES phone(phone_id),
    quantity INT NOT NULL,
    unit_price DECIMAL(18, 2) NOT NULL,
    subtotal DECIMAL(18, 2) NOT NULL
);

-----------------------
INSERT INTO order_details (order_id, phone_id, quantity, unit_price, subtotal) VALUES
-- Chi tiết cho đơn hàng 1 (iPhone 16 Pro Max)
(1, 1, 1, 30990000, 30990000),

-- Chi tiết cho đơn hàng 2 (iPhone 15)
(2, 2, 1, 15890000, 15890000),

-- Chi tiết cho đơn hàng 3 (iPhone 15 Pro Max)
(3, 3, 1, 27990000, 27990000),

-- Chi tiết cho đơn hàng 4 (iPhone 13)
(4, 4, 1, 11690000, 11690000),

-- Chi tiết cho đơn hàng 5 (iPhone 16 Pro)
(5, 5, 1, 25290000, 25290000),

-- Chi tiết cho đơn hàng 6 (iPhone 16 - đã hủy)
(6, 6, 1, 19190000, 19190000),

-- Chi tiết cho đơn hàng 21 (combo iPhone 15 + Samsung A56)
(21, 2, 1, 15890000, 15890000),
(21, 13, 1, 9490000, 9490000),

-- Chi tiết cho đơn hàng 23 (combo iPhone 16 Pro Max + Samsung S25)
(23, 1, 1, 30990000, 30990000),
(23, 9, 1, 20290000, 20290000),

-- Chi tiết cho đơn hàng 24 (combo iPhone 15 Pro Max + OPPO Reno10)
(24, 3, 1, 27990000, 27990000),
(24, 16, 1, 10990000, 10990000),

-- Chi tiết cho đơn hàng 25 (combo iPhone 16 + Samsung A36 - đã hủy)
(25, 6, 1, 19190000, 19190000),
(25, 14, 1, 7690000, 7690000),

-- Chi tiết cho đơn hàng 26 (iPhone 16 Pro Max mới)
(26, 1, 1, 30990000, 30990000),

-- Chi tiết cho đơn hàng 27 (Samsung S24 Ultra)
(27, 12, 1, 24890000, 24890000),

-- Chi tiết cho đơn hàng 28 (Xiaomi 14T Pro)
(28, 18, 1, 16490000, 16490000),

-- Chi tiết cho đơn hàng 29 (Xiaomi 15)
(29, 17, 1, 21990000, 21990000),

-- Chi tiết cho đơn hàng 30 (OPPO Find N5)
(30, 19, 1, 44990000, 44990000);

CREATE TABLE stores (
    store_id INT PRIMARY KEY IDENTITY(1,1),
    store_name NVARCHAR(100) NOT NULL,
    [address] NVARCHAR(255),
    phone_number NVARCHAR(15),
    email NVARCHAR(100),

);

INSERT INTO stores (store_name, [address], phone_number, email) VALUES
(N'Store', N'123 Lê Lợi, Hà Nội', '0256123456', 'store1@flowerstore.com'),
(N'Store Đà Nẵng', N'456 Trần Hưng Đạo, Đà Nẵng', '0256234567', 'store2@flowerstore.com'),
(N'Store Sài Gòn', N'789 Nguyễn Huệ, TPHCM', '0256345678', 'store3@flowerstore.com');

CREATE TABLE store_inventory (
    id INT PRIMARY KEY IDENTITY(1,1),
    store_id INT FOREIGN KEY REFERENCES stores(store_id),
    phone_id INT FOREIGN KEY REFERENCES phone(phone_id),
    stock_quantity INT NOT NULL
);

INSERT INTO store_inventory (store_id, phone_id, stock_quantity) VALUES
(1, 1, 20),  
(1, 2, 15),  
(1, 3, 10),  
(2, 4, 12),  
(2, 1, 8),   
(2, 2, 9),   
(3, 3, 11),  
(3, 4, 6),   
(3, 5, 12),  
(3, 1, 10);  


CREATE TABLE employees (
    employee_id INT PRIMARY KEY IDENTITY(1,1),
    full_name NVARCHAR(100) NOT NULL,
    phone_number NVARCHAR(15),
    email NVARCHAR(100),
    [address] NVARCHAR(255),
    store_id INT FOREIGN KEY REFERENCES stores(store_id),
	[username] NVARCHAR(50) NOT NULL,
    [password] NVARCHAR(255) NOT NULL,
);

INSERT INTO employees (full_name, phone_number, email, [address], store_id, [username], [password]) VALUES
(N'Nguyễn Thị Quyên', '0256111111', 'nva@techstore.com', N'123 Lê Lợi, Quy Nhơn, Bình Định', 1, 'ntq', '123456'),
(N'Trần Thị B', '0256222222', 'ttb@techstore.com', N'456 Trần Hưng Đạo, Quy Nhơn, Bình Định', 1, 'ttb', '123456'),
(N'Lê Văn C', '0256333333', 'lvc@techstore.com', N'789 Nguyễn Huệ, An Nhơn, Bình Định', 2, 'lvc', '123456'),
(N'Phạm Thị D', '0256444444', 'ptd@techstore.com', N'321 Lý Thường Kiệt, Quy Nhơn, Bình Định', 2, 'ptd', '123456'),
(N'Hoàng Văn E', '0256555555', 'hve@techstore.com', N'654 Ngô Quyền, An Nhơn, Bình Định', 3, 'hve', '123456'),
(N'Võ Thị F', '0256666666', 'vtf@techstore.com', N'987 Lê Duẩn, Quy Nhơn, Bình Định', 3, 'vtf', '123456');