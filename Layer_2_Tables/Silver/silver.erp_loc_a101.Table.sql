USE [DataWarehouse]
GO
/****** Object:  Table [silver].[erp_loc_a101]    Script Date: 05-06-2025 17:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [silver].[erp_loc_a101](
	[cid] [nvarchar](50) NULL,
	[cntry] [nvarchar](50) NULL,
	[dwh_create_date] [datetime2](7) NULL
) ON [PRIMARY]
GO
ALTER TABLE [silver].[erp_loc_a101] ADD  DEFAULT (getdate()) FOR [dwh_create_date]
GO
