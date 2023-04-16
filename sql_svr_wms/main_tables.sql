USE IDB
GO
CREATE TABLE STORE (
[taskid]varchar(15) NOT NULL,
[owndid]varchar(10) NOT NULL,
[store_code] [varchar](20) NOT NULL,
[name] [varchar](40) NOT NULL,
[zipcode] [varchar](6) NOT NULL,
[address] [varchar](100) NOT NULL,
[staff_name] [varchar](10) NOT NULL,
[tel_area] [varchar](50) NULL,
[mobile1] [varchar](15) NULL,
[fax] [varchar](20) NULL,
[type_code] [varchar](10) NOT NULL,
[out_cond] [DECIMAL](2,2) NOT NULL,
[u_user] [varchar](10) NOT NULL,
[telephone] [varchar](15) NULL,
[fax_area] [varchar](5) NULL,
[mobile2] [varchar](15) NULL,
[email] [varchar](40) NULL,
[enp_code] [varchar](10) NOT NULL,
[area_code] [varchar](10) NOT NULL,
[date_stop_s] [date] NULL,
[date_stop_e] [date] NULL,
[FRIGHT_CODE] [varchar](20) NULL,
[date_opened] [date] NULL,
[date_closed] [date] NULL,
[date_count] [date] NULL,
PRIMARY KEY (owndid, store_code)
)ON IDB_WMS_FG
GO

CREATE TABLE PRODUCT(
[taskid]varchar(15) NOT NULL,
[owndid]varchar(10) NOT NULL,
[sku]VARCHAR(20) NOT NULL,
[barcode] [varchar](20) NOT NULL,
[product_code] [varchar](20) NOT NULL,
[product_name] [varchar](40) NOT NULL,
[label_code] [varchar](3) NOT NULL,
[season_code] [varchar](6) NOT NULL,
[level1_code] [varchar](6) NOT NULL,
[level2_code] [varchar](6) NOT NULL,
[level3_code] [varchar](6) NOT NULL,
[price] [NUMERIC](18, 2) NOT NULL,
[expense] [varchar](1) NOT NULL,
[supplier_code] [varchar](20) NOT NULL,
[recive_due] [int] NULL,
[expir_due] [int] NULL,
[p_isdue] AS dbo.fnHasDue(expir_due),
[unit][varchar](4) NOT NULL,
[p_weight] [float] NULL,
[is_rtv] [varchar](1) NULL,
[u_user] [varchar](20) NOT NULL,
[book] [varchar](1) NOT NULL DEFAULT 'N',
[product_stock] [varchar](1) NOT NULL,
[back_due] [float] NULL,
[ship_due] [float] NULL,
[tip_due] [float] NULL,
[boxqty] [int] NULL,
[p_long] [float] NULL,
[p_width] [float] NULL,
[p_height] [float] NULL,
[Record_Number] [varchar](30) NULL,
[size_code] [varchar](10) NOT NULL,
[color_code] [varchar](5) NULL,
PRIMARY KEY (taskid,owndid, sku, barcode)
)ON IDB_WMS_FG
GO