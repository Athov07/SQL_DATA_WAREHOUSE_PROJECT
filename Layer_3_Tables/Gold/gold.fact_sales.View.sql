USE [DataWarehouse]
GO
/****** Object:  View [gold].[fact_sales]    Script Date: 05-06-2025 17:54:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [gold].[fact_sales] as
select 
		sd.sls_ord_num as order_number,
		pr.product_key,
		cu.customer_key,
		sd.sls_order_dt as order_date,
		sd.sls_ship_dt as shipping_date,
		sd.sls_due_dt as due_date,
		sd.sls_sales as sales_amount,
		sd.sls_quantity as quantity,
		sd.sls_price as price
from silver.crm_sales_detailes sd
left join gold.dim_products pr
on sd.sls_prd_key = pr.product_number
left join gold.dim_customers cu
on sd.sls_cust_id = cu.customer_id

---select * from gold.fact_sales
GO
