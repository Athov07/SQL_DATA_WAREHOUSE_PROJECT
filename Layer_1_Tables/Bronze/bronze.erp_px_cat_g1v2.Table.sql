USE [DataWarehouse]
GO
/****** Object:  Table [bronze].[erp_px_cat_g1v2]    Script Date: 05-06-2025 17:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bronze].[erp_px_cat_g1v2](
	[id] [nvarchar](50) NULL,
	[cat] [nvarchar](50) NULL,
	[subcat] [nvarchar](50) NULL,
	[maintenace] [nvarchar](50) NULL
) ON [PRIMARY]
GO
