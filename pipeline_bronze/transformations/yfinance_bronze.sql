CREATE OR REFRESH STREAMING LIVE TABLE yfinance
TBLPROPERTIES ("quality" = "bronze")
AS
SELECT *
from cloud_files("/Volumes/lakehouse/raw_public/yfinance/commodities/latest_prices/", 
"json"
);
