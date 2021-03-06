USE QLtrangtintuc
GO


/****** Object:  Table [dbo].[Admin]    Script Date: 12/16/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Admin](
	[MaAdmin] [int] NOT NULL,
	[TenDNAdmin] [varchar](15) NULL,
	[MatKhauAdmin] [varchar](15) NULL,
	[MaND] [int] NOT NULL,
	[QuyenAdmin] [int] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 12/16/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Banner](
	[ID] [int] NOT NULL,
	[TenBanner] [nvarchar](50) NOT NULL,
	[HinhAnh] [nvarchar](200) NOT NULL,
	[HinhLienKet] [varchar](max) NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ChuyenMucTin]    Script Date: 12/16/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMucTin](
	[ChuyenMucID] [int] NOT NULL,
	[ChuyenMucCha] [int] NULL,
	[TenChuyenMuc] [nvarchar](250) NULL,
	[Link] [nvarchar](200) NULL,
 CONSTRAINT [PK_ChuyenMucTin] PRIMARY KEY CLUSTERED 
(
	[ChuyenMucID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KetNoi]    Script Date: 12/16/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KetNoi](
	[ID] [tinyint] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[URL] [nvarchar](100) NULL,
 CONSTRAINT [PK_KetNoi] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 12/16/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[MaND] [int] IDENTITY(1,1) NOT NULL,
	[HoTenND] [nvarchar](50) NULL,
	[DiaChiND] [nvarchar](50) NULL,
	[DienThoaiND] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[MatKhau] [varchar](15) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL CONSTRAINT [DF_NguoiDung_GioiTinh]  DEFAULT ((1)),
	[Email] [varchar](50) NULL,
	[DaDuyet] [bit] NULL,
 CONSTRAINT [PK_NguoiDung_1] PRIMARY KEY CLUSTERED 
(
	[MaND] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Quyen]    Script Date: 12/16/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quyen](
	[RoleID] [int] NOT NULL,
	[RoleName] [nvarchar](256) NULL,
	[MoTa] [nvarchar](256) NULL,
 CONSTRAINT [PK_Quyen] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TinTuc]    Script Date: 12/16/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TinTuc](
	[NewsID] [int] NOT NULL,
	[ChuyenMucID] [int] NULL,
	[TieuDe] [nvarchar](max) NOT NULL,
	[TomTat] [nvarchar](max) NOT NULL,
	[NoiDung] [nvarchar](max) NOT NULL,
	[TuKhoa] [nvarchar](100) NOT NULL,
	[TacGia] [nvarchar](100) NOT NULL,
	[HinhAnh] [nvarchar](100) NOT NULL,
	[NgayViet] [nvarchar](50) NOT NULL,
	[NgayDang] [nvarchar](50) NULL,
	[SoNguoiDoc] [int] NULL,
	[Status] [int] NULL,
	[NguoiDang] [nvarchar](100) NULL,
	[SoLuotPhanHoi] [int] NULL,
 CONSTRAINT [PK_TinTuc] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[YKIENND]    Script Date: 12/16/2019 11:04:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YKIENND](
	[MaYK] [int] IDENTITY(1,1) NOT NULL,
	[MaND] [int] NULL,
	[HoTenND] [nvarchar](50) NULL,
	[Ykien] [nvarchar](50) NULL,
	[NgayDang] [nvarchar](50) NULL,
 CONSTRAINT [PK_YKIENND] PRIMARY KEY CLUSTERED 
(
	[MaYK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Admin] ([MaAdmin], [TenDNAdmin], [MatKhauAdmin], [MaND], [QuyenAdmin]) VALUES (1, N'adminnhut', N'123456', 1, 1)
INSERT [dbo].[ChuyenMucTin] ([ChuyenMucID], [ChuyenMucCha], [TenChuyenMuc], [Link]) VALUES (1, 1, N'Sneaker', NULL)
INSERT [dbo].[ChuyenMucTin] ([ChuyenMucID], [ChuyenMucCha], [TenChuyenMuc], [Link]) VALUES (2, 2, N'Local Fahshion', NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [DiaChiND], [DienThoaiND], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (1, N'Nguyen Nhut', N'Binh Duong', N'0966606503', N'nhutnguyen', N'123456', CAST(N'1999-06-06 00:00:00' AS SmallDateTime), 1, N'nguyennhut013066@gmail.com', 1)
INSERT [dbo].[NguoiDung] ([MaND], [HoTenND], [DiaChiND], [DienThoaiND], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email], [DaDuyet]) VALUES (2, N'Trần Dần', N'số 6 Trần Văn Ơn', N'123456789', N'trandan', N'123456', CAST(N'1999-01-01 00:00:00' AS SmallDateTime), 1, N'trandan@gmail.com', NULL)
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
INSERT [dbo].[TinTuc] ([NewsID], [ChuyenMucID], [TieuDe], [TomTat], [NoiDung], [TuKhoa], [TacGia], [HinhAnh], [NgayViet], [NgayDang], [SoNguoiDoc], [Status], [NguoiDang], [SoLuotPhanHoi]) VALUES (1, 1, N'Cực Ngầu Cùng Họa Tiết Skull Cap Từ Vans Jawbones', N'Nếu như bạn vẫn chưa có ý tưởng nào cho trang phục mùa lễ hội thì VANS JAWBONES sẽ là một lựa chọn không tồi.', N'Sau các hit đình đám như AVE PRO, The Nightmare Before Christmas, Vans như đang dùng thực tế để minh chứng cho việc team design sản phẩm của mình đỉnh đến cỡ nào. Không khoa trương, không đao to búa lớn, chỉ đơn giản dùng sự sáng tạo khác biệt để nói lên tất cả.

Vẫn giữ phong độ “Cool ngầu”, Vans một lần nữa khẳng định vị trí trong làng sneaker qua BST JAWBONES cực lửa.', N'Vans', N'Nhut', N'1-Vans.jpg', N'20/11/2019', N'21/11/2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTuc] ([NewsID], [ChuyenMucID], [TieuDe], [TomTat], [NoiDung], [TuKhoa], [TacGia], [HinhAnh], [NgayViet], [NgayDang], [SoNguoiDoc], [Status], [NguoiDang], [SoLuotPhanHoi]) VALUES (2, 1, N'Palladium x Kenzo – Kết Tinh Của Nền Thời Trang Pháp', N'Nếu bạn là một fan trung thành của Palladium thì đừng bỏ qua cơ hội có một không hai để sở hữu bộ sưu tập “độc nhất vô nhị” này nhé.', N'Mới đây thôi, cộng đồng đam mê thời trang vừa được mãn nhãn trước sự kết hợp giữa 2 thương hiệu đình đám với bề dày lịch sử lần lượt là 70 năm (Palladium) và 50 năm (Kenzo) trong bộ collab Palladium Pallashock by Kenzo

Điều đáng nói ở sự kết hợp lần này chính là việc cả 2 thương hiệu khổng lồ trên đều được sinh ra và lớn lên trên đất Pháp – đất nước của sự phồn hoa, lãng mạn và những trái tim đam mê tự do, khám phá. Chính vì lẽ đó, Palladium Pallashock by Kenzo mang trên mình sứ mệnh giải phóng khát khao cháy bỏng muốn được khám phá, chiêm nghiệm mọi ngóc ngách của đời sống trong các bạn trẻ.', N'Palladium', N'Tran Dan', N'1-02.jpg', N'21/11/2019', N'22/11/2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTuc] ([NewsID], [ChuyenMucID], [TieuDe], [TomTat], [NoiDung], [TuKhoa], [TacGia], [HinhAnh], [NgayViet], [NgayDang], [SoNguoiDoc], [Status], [NguoiDang], [SoLuotPhanHoi]) VALUES (3, 2, N'Binz và ClownZ Chơi Thực Sự Lớn Với Màn Ra Mắt Dự Án ‘Krazy About You’ Tại Sài Gòn', N'BINZ CƯỠI XẾ CỔ DẪN ĐẦU ĐOÀN MOTOR CỰC CHẤT TỚI ‘ĐẬP HỘP ‘KRAZY ABOUT YOU’. Quả bom BinzxClownZ ‘KRAZY ABOUT YOU’ đã chính thức phát nổ ngày hôm qua tại sự kiện Khai trương cửa hàng đầu tiên của ClownZ, 100 Nguyễn Trãi, Q1, HCM.', N'BINZ à nhân vật được mong đợi nhất, Brand Ambassador của ClownZ đã không làm mọi người phải thất vọng với màn xuất hiện cực chất, thu hút sự chú ý của cả con phố Nguyễn Trãi. Nam rapper lái chiếc xế cổ của mình dẫn đầu đoàn motor hộ tống tiến thẳng tới dự sự kiện ra mắt BinzxClownZ Campaign ‘KRAZY ABOUT YOU’ và khai trương cửa hàng ClownZ Sài Gòn đầu tiên.

Điểm đặc biệt nhất của sự kiện chính là màn đập hộp đặc biệt của Campaign ‘KRAZY ABOUT YOU’ . Không chỉ là mở hộp thông thường, hay đập hộp như ‘Z Box’ – món quà đặc biệt khiến cộng đồng quan tâm tới Streetwear Việt hào hứng suốt tuần qua. Chiếc hộp chứa ClownZ x Binz ‘Krazy’ Puffer Jacket sẽ có kích thước khổng lồ nhất và do chính tay Binz dùng búa ‘đập hộp’ trực tiếp tại ClownZ Sài Gòn 100 Nguyễn Trãi.

Bên trong chiếc hộp chính là chiếc áo đặc biệt nhất sẽ được đem ra đấu giá trong ngày ra mắt: ClownZ x Binz ‘Krazy’ Puffer Jacket. Đây là sản phẩm giới hạn với số lượng chỉ có 8 chiếc. 7 chiếc được Binz dành tặng cho Friends and Fam, và chỉ 1 chiếc DUY NHẤT dành tặng cho fan theo hình thức đấu giá.', N'Binz', N'Nhut', N'2-01.jpg', N'10/12/2019', N'11/12/2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTuc] ([NewsID], [ChuyenMucID], [TieuDe], [TomTat], [NoiDung], [TuKhoa], [TacGia], [HinhAnh], [NgayViet], [NgayDang], [SoNguoiDoc], [Status], [NguoiDang], [SoLuotPhanHoi]) VALUES (4, 2, N'Nirvana Streetwear ra mắt BST mới nhân dịp khai trương cửa hàng “xịn xò” với vô vàn concept “sống ảo” lung linh', N'Không chỉ là nơi mua sắm, cửa hàng mới của Nirvana Streetwear hướng đến sự riêng biệt và sáng tạo nhất có thể, mang đến cho khách hàng những trải nghiệm đồng bộ và rõ ràng nhất về phong cách của thương hiệu.', N'.



Nirvana Streetwear là một thương hiệu quần áo không còn xa lạ với các bạn trẻ tại Hà Nội. Với phong cách độc đáo, dị biệt, thương hiệu luôn cố gắng sáng tạo và đưa chất xám của mình vào từng sản phẩm khác nhau. Sau 2 năm hoạt động Nirvana Streetwear đã chuyển địa điểm về 80 Phó Đức Chính.

Tại địa điểm mới lần này, đội ngũ thiết kế của Nirvana lại một lần nữa thể hiện cá tính của họ qua việc thiết kế cửa hàng. Nirvana coi đây là một sản phẩm nghệ thuật, cửa hàng cũng như những sản phẩm của Nirvana đều phải được phát triển một cách riêng biệt và sáng tạo nhất có thể.

Sau 3 tháng lên kế hoạch và 2 tuần thi công, cuối cùng những con người sáng tạo và có tâm này cũng đã có một ngôi nhà mới ưng ý và sẽ chính thức đi vào hoạt động cuối tuần này vào ngày 14/12. Nirvana hiểu được rằng, một store không chỉ là nơi để khách hàng tới thanh toán sản phẩm mà còn là nơi để các bạn có thể dành thời gian trải nghiệm sản phẩm trước khi mua hàng. Vậy nên họ đã thiết kế không gian với nhiều concept khác nhau để có thể biến những bức selfie cùng bộ outfit thành những tấm hình lung linh ngay tại store!

Tại event lần này, Nirvana chính thức ra mắt BST mới cùng với đó là những ưu đãi khai trương dành cho những hoá đơn tại cửa hàng.', N'Nirvana', N'Nhut', N'2-02.jpg', N'10/12/2019', N'12/12/2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTuc] ([NewsID], [ChuyenMucID], [TieuDe], [TomTat], [NoiDung], [TuKhoa], [TacGia], [HinhAnh], [NgayViet], [NgayDang], [SoNguoiDoc], [Status], [NguoiDang], [SoLuotPhanHoi]) VALUES (5, 2, N'5THEWAY® Tại Sole Ex Tour 2019 Với /make global local/ WORKSHOP™ & /nothing/ Early Releasing Collection™', N'Throwback những khoảnh khắc đáng nhớ nhất của 5THEWAY® tại sự kiện Sole Ex Tour 2019 và đón chờ /nothing/ COLLECTION™ sẽ được ra mắt chính thức vào cuối tuần này', N'Tại sự kiện Sole Ex Tour 2019, /make global local/ WORKSHOP™ có thể nói là cơ hội để 5THEWAY® được tổ chức đứa con tinh thần đầu tiên với mục đích chia sẻ những câu chuyện và thông điệp về vải, chất liệu cho cộng động 100 thành viên Streetwear.

5THEWAY® không quên thể hiện là một thương hiệu đa màu sắc qua những cái mới mà thương hiệu muốn mang đến cho giới trẻ, qua cách ăn mặc, qua cách cảm nhận đa chiều về thời trang, câu chuyện local brand, cũng như những giá trị làm nên chúng

Tại /make global local/ WORKSHOP™, bạn sẽ không quên những trải nghiệm cùng VINYL™ và STENCIL™  khi được thỏa sức sáng tạo, tự tay customize những chiếc áo đơn giản trở thành dấu ấn cá nhân, mang đậm phong cách riêng.', N'5theway', N'Nhut', N'2-03.jpg', N'10/12/2019', N'13/12/2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTuc] ([NewsID], [ChuyenMucID], [TieuDe], [TomTat], [NoiDung], [TuKhoa], [TacGia], [HinhAnh], [NgayViet], [NgayDang], [SoNguoiDoc], [Status], [NguoiDang], [SoLuotPhanHoi]) VALUES (6, 2, N'Prada hợp tác cùng adidas vinh danh 2 thiết kế iconic của nhau', N'Superstar từ adidas và Bowling Bag từ Prada – made in Italy với giới hạn 700 sản phẩm. Adidas và Prada đã chính thức hé lộ BST hợp tác đầu tiên của cả 2.', N'Chủ đề thiết kế của BST hướng đến việc vinh danh các thiết kế iconic của hai thương hiệu, nâng tầm chúng với tinh thần craftsmanship. Ở phía adidas, cái tên được vinh danh là dòng giày Superstar; còn với Prada, đó là mẫu Bowling Bag.

Chọn sắc Trắng Tinh làm chủ đạo, BST có lẽ hướng đến việc truyền tải cảm giác hoàn hảo và thuần khuyết của tinh thần craftsmanship. Tất cả sản phẩm đều được sản xuất hoàn toàn tại Ý, với những vật liệu cao cấp và sự chế tác tỉ mỉ.

Cả 2 sản phẩm này sẽ được phát hành vào ngày 04/12, với retail dự kiến cho cả 2 sản phẩm sẽ là $3,170.', N'adidas', N'Nhut', N'2-04.jpg', N'10/12/2019', N'13/12/2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTuc] ([NewsID], [ChuyenMucID], [TieuDe], [TomTat], [NoiDung], [TuKhoa], [TacGia], [HinhAnh], [NgayViet], [NgayDang], [SoNguoiDoc], [Status], [NguoiDang], [SoLuotPhanHoi]) VALUES (7, 1, N'Tái bản của Air Jordan 11 “Bred” 2019 sẽ được phát hành ở đâu?', N'Cuối tuần này sẽ là thời điểm đánh dấu sự trở lại đầy ngoạn mục sau 8 năm kín tiếng của Air Jordan 11 trong phối màu “Bred”.', N'Không dài dòng, những thông tin phát hành của đôi giày đã được công bố chính thức ở nhiều nơi, nhưng với một phát hành hot như thế này, việc nhắc lại ngày phát hành để không bỏ lỡ là hoàn toàn cần thiết. Song song với việc đổ bộ của các phiên bản cho nhiều cỡ chân khác nhau, Air Jordan 11 “Bred” sẽ được phát hành vào ngày 14.12 với đầy đủ các size từ Men’s, GS, PS, TD, và Infant.

Nếu bạn chú ý, những phát hành Air Jordan 11 dạo gần đây chọn việc thử nghiệm chất liệu mới thay thế cho lớp da bóng trên viền giày, nên thật hứng thú khi được nhìn thấy một thiết kế kinh điển được hồi sinh. Và nếu bạn có những thắc mắc khi so sánh với bản 2011, hãy lưu ý rằng phiên bản 2019 được làm theo bản gốc OG 1996, từ phần viền da cắt thô, cho đến những điểm da dư đều tái hiện rõ ràng. Con số 23 quen thuộc xuất hiện ở phần bo thun cổ chân, tuy đã có nhiều dự đoán về việc đưa số 45 để tăng độ hot nhưng có vẻ nhưng đó chỉ là tin đồn trước khi có hình ảnh chính thức. Ngoài ra thì những chi tiết khác được xây dựng với độ hoàn thiện và sắc nét cao, điển hình là đế ngoài translucent màu đỏ, lớp carbon fiber chạy dài gần hết lòng bàn chân. Tất cả mang lại cảm giác như ngày đầu tiên bạn nhìn thấy đôi giày này trên mạng và ngay lập tức, muốn được sở hữu nó.

Danh sách các điểm phát hành Air Jordan 11 “Bred” theo từng phân khúc size. Mức giá $220 được mặc định cho Men’s size và sẽ giảm dần theo kích thước.', N'jordan', N'Nhut', N'1-03.jpg', N'10/12/2019', N'14/12/2019', NULL, NULL, NULL, NULL)
INSERT [dbo].[TinTuc] ([NewsID], [ChuyenMucID], [TieuDe], [TomTat], [NoiDung], [TuKhoa], [TacGia], [HinhAnh], [NgayViet], [NgayDang], [SoNguoiDoc], [Status], [NguoiDang], [SoLuotPhanHoi]) VALUES (8, 1, N'Phiên bản cổ cao của Yeezy 500 được xác nhận sẽ release vào đầu tuần sau', N'Thành viên mới nhất gia nhập series adidas Yeezy sẽ là phiên bản High-Top của dòng Yeezy 500. Đây cũng là dòng giày đầu tiên trong series adidas Yeezy được Kanye thay đổi định dạng chiều cao.', N'Phối màu đầu tiên của dòng giày này – mang tên “Slate”, vừa được adidas tung hình ảnh chính thức cùng xác nhận release vào ngày 16/12 tới.

Thiết kế đặc trưng của bộ đế Yeezy 500 tiếp tục xuất hiện trên phiên bản High-Top, một chi tiết xác nhận họ hàng vô cũng rõ ràng. Ở phần upper, Yeezy 500 High-Top tiếp tục thể hiện sự liên quan với người anh thấp bé qua những panel dạng hình cong cùng cấu trúc overlay.

Được tung ra vào ngay mùa Đông cùng định dạng cổ cao, Yeezy 500 High-Top đã loại bỏ Mesh cho layer bên dưới – và thay vào đó là Elastane, một loại chất liệu co giãn rất tốt và có khả năng kháng nước – với tỉ lệ hấp thụ chất lỏng dưới 1%.

Ở lớp layer phía trên, Cow Suede và Leather tiếp tục được sử dụng, giữ lại nét thẩm mỹ quen thuộc của dòng 500.', N'yeezy', N'Nhut', N'1-04.jpg', N'10/12/2019', N'20/11/2019', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[YKIENND] ON 

INSERT [dbo].[YKIENND] ([MaYK], [MaND], [HoTenND], [Ykien], [NgayDang]) VALUES (1, 1, N'nhutnguyen', N'Nhập nội dung!aaaaaa', N'30/11/2019')
INSERT [dbo].[YKIENND] ([MaYK], [MaND], [HoTenND], [Ykien], [NgayDang]) VALUES (4, 1, N'nhutnguyen', N'GOOD ', N'30/11/2019')
SET IDENTITY_INSERT [dbo].[YKIENND] OFF
ALTER TABLE [dbo].[Admin]  WITH CHECK ADD  CONSTRAINT [FK_Admin_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[Admin] CHECK CONSTRAINT [FK_Admin_NguoiDung]
GO
ALTER TABLE [dbo].[TinTuc]  WITH CHECK ADD  CONSTRAINT [FK_TinTuc_ChuyenMucTin] FOREIGN KEY([ChuyenMucID])
REFERENCES [dbo].[ChuyenMucTin] ([ChuyenMucID])
GO
ALTER TABLE [dbo].[TinTuc] CHECK CONSTRAINT [FK_TinTuc_ChuyenMucTin]
GO
ALTER TABLE [dbo].[YKIENND]  WITH CHECK ADD  CONSTRAINT [FK_YKIENND_NguoiDung] FOREIGN KEY([MaND])
REFERENCES [dbo].[NguoiDung] ([MaND])
GO
ALTER TABLE [dbo].[YKIENND] CHECK CONSTRAINT [FK_YKIENND_NguoiDung]
GO
