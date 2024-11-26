USE ContosoRetailDW

-- Total Vendas, Custo, Margem e Quantidade
SELECT
	FORMAT(SUM(SalesAmount), 'C2') AS Sales,
	FORMAT(SUM(TotalCost), 'C2') AS Cost,
	FORMAT((SUM(SalesAmount) - SUM(TotalCost)), 'C2') AS Margin,
	FORMAT(SUM(SalesQuantity), 'C2') AS Quantity
FROM FactSales

-- Vendas por Promcao
SELECT DISTINCT
	DP.PromotionName AS Promotion,
	DP.PromotionType AS PromotionType,
	FORMAT(SUM(SalesAmount), 'C2') AS Sales
FROM FactSales AS FS
INNER JOIN DimPromotion AS DP ON FS.PromotionKey = DP.PromotionKey
GROUP BY 
	DP.PromotionName, 
	DP.PromotionType
ORDER BY Sales DESC

-- Vendas por Canal
SELECT DISTINCT
	DC.ChannelName,
	FORMAT(SUM(SalesAmount), 'C2') AS Sales
FROM FactSales AS FS
INNER JOIN DimChannel AS DC ON FS.channelKey = DC.ChannelKey
GROUP BY DC.ChannelName
ORDER BY Sales DESC

-- TOP 5 Vendas por Categoria
SELECT TOP 5
	DPC.ProductCategoryName,
	FORMAT(SUM(SalesAmount), 'C2') AS Sales
FROM FactSales AS FS
INNER JOIN DimProduct AS DP ON FS.ProductKey = DP.ProductKey
INNER JOIN DimProductSubcategory AS DPS ON DP.ProductSubcategoryKey = DPS.ProductSubcategoryKey
INNER JOIN DimProductCategory AS DPC ON DPS.ProductCategoryKey = DPC.ProductCategoryKey
GROUP BY DPC.ProductCategoryName
ORDER BY Sales DESC

-- Vendas por Classe
SELECT
	DP.ClassName,
	FORMAT(SUM(SalesAmount), 'C2') AS Sales
FROM FactSales AS FS
INNER JOIN DimProduct AS DP ON FS.ProductKey = DP.ProductKey
GROUP BY DP.ClassName
ORDER BY Sales DESC

-- Vendas por Mes
SELECT
	DD.CalendarMonthLabel AS 'Month',
	FORMAT(SUM(SalesAmount), 'C2') AS Sales
FROM FactSales AS FS
INNER JOIN DimDate As DD ON FS.DateKey = DD.Datekey
WHERE DD.CalendarYear = '2008'
GROUP BY 
	DD.CalendarMonth, 
	DD.CalendarMonthLabel
ORDER BY DD.CalendarMonth

-- Vendas por Territorio
SELECT
	DG.StateProvinceName,
	DG.RegionCountryName,
	FORMAT(SUM(SalesAmount), 'C2') AS Sales
FROM FactSales AS FS
INNER JOIN DimStore AS DS ON FS.StoreKey = DS.StoreKey
INNER JOIN DimGeography AS DG ON DS.GeographyKey = DG.GeographyKey
GROUP BY 
	DG.StateProvinceName,
	DG.RegionCountryName 
ORDER BY Sales DESC