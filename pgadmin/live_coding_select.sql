-- here are three queries (mark them individually to run them) to select table data

SELECT "ProductCode", "ProductName",
	   "UnitPrice", "District"
	FROM public."Products"
	WHERE "UnitPrice" < 160::money;

SELECT "Date", "ProductCode", "Quantity"
	FROM public."Sales";

SELECT "ExportDestCode", "ExportDestName"
	FROM public."ExportDestinations";
