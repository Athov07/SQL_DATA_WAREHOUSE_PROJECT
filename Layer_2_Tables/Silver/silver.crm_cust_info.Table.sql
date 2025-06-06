USE [DataWarehouse]
GO
/****** Object:  Table [silver].[crm_cust_info]    Script Date: 05-06-2025 17:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [silver].[crm_cust_info](
	[cst_id] [int] NULL,
	[cst_key] [nvarchar](50) NULL,
	[cst_firstname] [nvarchar](50) NULL,
	[cst_lastname] [nvarchar](50) NULL,
	[cst_marital_status] [nvarchar](50) NULL,
	[cst_gndr] [nvarchar](50) NULL,
	[cst_create_date] [date] NULL,
	[dwh_create_date] [datetime2](7) NULL
) ON [PRIMARY]
GO
ALTER TABLE [silver].[crm_cust_info] ADD  DEFAULT (getdate()) FOR [dwh_create_date]
GO
