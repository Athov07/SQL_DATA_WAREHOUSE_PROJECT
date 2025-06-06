USE [DataWarehouse]
GO
/****** Object:  Table [silver].[crm_sales_detailes]    Script Date: 05-06-2025 17:48:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [silver].[crm_sales_detailes](
	[sls_ord_num] [nvarchar](50) NULL,
	[sls_prd_key] [nvarchar](50) NULL,
	[sls_cust_id] [int] NULL,
	[sls_order_dt] [date] NULL,
	[sls_ship_dt] [date] NULL,
	[sls_due_dt] [date] NULL,
	[sls_sales] [int] NULL,
	[sls_quantity] [int] NULL,
	[sls_price] [int] NULL,
	[dwh_create_date] [datetime2](7) NULL
) ON [PRIMARY]
GO
ALTER TABLE [silver].[crm_sales_detailes] ADD  DEFAULT (getdate()) FOR [dwh_create_date]
GO
