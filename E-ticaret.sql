USE [Eticaret]
GO
/****** Object:  Table [dbo].[Adresler]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [int] NOT NULL,
	[Sehir] [nvarchar](20) NULL,
	[Ilce] [nvarchar](20) NULL,
	[Mahalle] [nvarchar](30) NULL,
	[Sokak] [nvarchar](30) NOT NULL,
	[KapiNo] [int] NULL,
 CONSTRAINT [PK_Adresler_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Fotograflar]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fotograflar](
	[FotografID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NOT NULL,
	[FotografAdi] [nvarchar](20) NOT NULL,
	[FotografAcıklama] [nvarchar](max) NULL,
 CONSTRAINT [PK_Fotograflar] PRIMARY KEY CLUSTERED 
(
	[FotografID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kargolar]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kargolar](
	[KargoID] [int] IDENTITY(1,1) NOT NULL,
	[KargoAdi] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Kargolar] PRIMARY KEY CLUSTERED 
(
	[KargoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAdi] [nvarchar](30) NOT NULL,
	[Aciklama] [nvarchar](500) NULL,
	[UstKategoriId] [int] NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KullaniciDetay]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciDetay](
	[KDID] [nchar](10) NOT NULL,
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](20) NULL,
	[KullaniciSoyadi] [nvarchar](30) NULL,
	[KullaniciTelefonu] [int] NULL,
	[KullaniciEmaili] [nvarchar](30) NULL,
 CONSTRAINT [PK_KullaniciDetay] PRIMARY KEY CLUSTERED 
(
	[KDID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciIsmi] [nvarchar](max) NULL,
	[KullaniciSifre] [nvarchar](max) NULL,
	[YetkiDurumu] [int] NOT NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Markalar]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Markalar](
	[MarkaID] [int] IDENTITY(1,1) NOT NULL,
	[MarkaAdi] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Markalar] PRIMARY KEY CLUSTERED 
(
	[MarkaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SepetTemp]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SepetTemp](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SepetNo] [varchar](max) NULL,
	[UrunId] [int] NULL,
	[UrunAdi] [nvarchar](max) NULL,
	[UrunFiyat] [decimal](18, 0) NULL,
	[Adet] [int] NULL CONSTRAINT [DF_SepetTemp_Adet]  DEFAULT ((0)),
	[Tarih] [date] NULL,
	[Saat] [time](7) NULL,
 CONSTRAINT [PK_SepetTemp] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SiparisDetay]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDetay](
	[SiparisDetayID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NOT NULL,
	[SiparisID] [int] NOT NULL,
	[BirimFiyati] [money] NOT NULL,
	[UrunMiktari] [int] NOT NULL,
	[Indirim] [real] NOT NULL,
 CONSTRAINT [PK_SiparisDetay] PRIMARY KEY CLUSTERED 
(
	[SiparisDetayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisID] [int] NOT NULL,
	[KargoID] [int] NOT NULL,
	[SiparisTarihi] [datetime] NULL,
	[SiparisTeslimTarihi] [datetime] NULL,
	[GondermeSekli] [int] NULL,
	[Fiyat] [money] NULL,
	[TedarikciAdi] [nchar](30) NULL,
	[TedarikciAdresi] [nchar](50) NULL,
	[TedarikciSehri] [nvarchar](20) NULL,
	[TedarikciUlkesi] [nvarchar](20) NULL,
	[TedarikciPostaKodu] [nvarchar](20) NULL,
 CONSTRAINT [PK_Siparisler] PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tedarikci]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikci](
	[TedarikciID] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdi] [nvarchar](30) NOT NULL,
	[TUlke] [nvarchar](20) NULL,
	[TSehir] [nvarchar](20) NULL,
	[TIlce] [nvarchar](20) NULL,
	[TMahalle] [nvarchar](30) NULL,
	[TSokak] [nvarchar](30) NULL,
	[TKapiNo] [int] NULL,
 CONSTRAINT [PK_Tedarikci_1] PRIMARY KEY CLUSTERED 
(
	[TedarikciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](40) NOT NULL,
	[TedarikciID] [int] NULL,
	[KategoriID] [int] NULL,
	[BirimMiktari] [nvarchar](20) NULL,
	[BirimFiyati] [decimal](18, 2) NULL,
	[StokMiktari] [smallint] NULL,
	[SiparisEdilenMiktar] [smallint] NULL,
	[MarkaID] [int] NULL,
	[Image] [nvarchar](50) NULL,
	[BigImage] [nvarchar](50) NULL,
	[EnCokSatan] [int] NULL,
	[EnCokBegenilen] [int] NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UrunYorumlari]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrunYorumlari](
	[YorumID] [int] IDENTITY(1,1) NOT NULL,
	[UrunID] [int] NULL,
	[KullaniciID] [int] NOT NULL,
	[Yorum] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UrunYorumlari] PRIMARY KEY CLUSTERED 
(
	[YorumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Adresler]  WITH CHECK ADD  CONSTRAINT [FK_Adresler_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullaniciID])
GO
ALTER TABLE [dbo].[Adresler] CHECK CONSTRAINT [FK_Adresler_Kullanicilar]
GO
ALTER TABLE [dbo].[Fotograflar]  WITH CHECK ADD  CONSTRAINT [FK_Fotograflar_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[Fotograflar] CHECK CONSTRAINT [FK_Fotograflar_Urunler]
GO
ALTER TABLE [dbo].[Kategoriler]  WITH CHECK ADD  CONSTRAINT [FK_Kategoriler_Kategoriler1] FOREIGN KEY([UstKategoriId])
REFERENCES [dbo].[Kategoriler] ([KategoriID])
GO
ALTER TABLE [dbo].[Kategoriler] CHECK CONSTRAINT [FK_Kategoriler_Kategoriler1]
GO
ALTER TABLE [dbo].[KullaniciDetay]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciDetay_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullaniciID])
GO
ALTER TABLE [dbo].[KullaniciDetay] CHECK CONSTRAINT [FK_KullaniciDetay_Kullanicilar]
GO
ALTER TABLE [dbo].[SiparisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SiparisDetay_Siparisler] FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparisler] ([SiparisID])
GO
ALTER TABLE [dbo].[SiparisDetay] CHECK CONSTRAINT [FK_SiparisDetay_Siparisler]
GO
ALTER TABLE [dbo].[SiparisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SiparisDetay_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[SiparisDetay] CHECK CONSTRAINT [FK_SiparisDetay_Urunler]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_Siparisler_Kargolar] FOREIGN KEY([KargoID])
REFERENCES [dbo].[Kargolar] ([KargoID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_Siparisler_Kargolar]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler1] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategoriler] ([KategoriID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler1]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Markalar] FOREIGN KEY([MarkaID])
REFERENCES [dbo].[Markalar] ([MarkaID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Markalar]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Tedarikci] FOREIGN KEY([TedarikciID])
REFERENCES [dbo].[Tedarikci] ([TedarikciID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Tedarikci]
GO
ALTER TABLE [dbo].[UrunYorumlari]  WITH CHECK ADD  CONSTRAINT [FK_UrunYorumlari_Kullanicilar] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[Kullanicilar] ([KullaniciID])
GO
ALTER TABLE [dbo].[UrunYorumlari] CHECK CONSTRAINT [FK_UrunYorumlari_Kullanicilar]
GO
ALTER TABLE [dbo].[UrunYorumlari]  WITH CHECK ADD  CONSTRAINT [FK_UrunYorumlari_Urunler] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[UrunYorumlari] CHECK CONSTRAINT [FK_UrunYorumlari_Urunler]
GO
/****** Object:  StoredProcedure [dbo].[sp_UstKategoriIDyeGoreUrunListele]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[sp_UstKategoriIDyeGoreUrunListele]
	@KategoriIDList nvarchar(MAX)
As
Declare @Query as nvarchar(Max)
Set @Query =' SELECT *  FROM Markalar M INNER JOIN Urunler U ON M.MarkaID = U.MarkaID where KategoriID in ('+@KategoriIDList+') '
Exec(@Query)

--Exec sp_UstKategoriIDyeGoreUrunListele "'16','20'"

GO
/****** Object:  StoredProcedure [dbo].[spMarkaGetir]    Script Date: 19.01.2018 15:21:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[spMarkaGetir]
@UrunIDleri nvarchar(MAX)
AS
DECLARE @MarkaQuery AS nvarchar(MAX)
Set @MarkaQuery =' SELECT MarkaAdi  FROM Markalar M INNER JOIN Urunler U ON M.MarkaID = U.MarkaID where UrunID = (' + @UrunIDleri + ')'
Exec(@MarkaQuery)
GO
