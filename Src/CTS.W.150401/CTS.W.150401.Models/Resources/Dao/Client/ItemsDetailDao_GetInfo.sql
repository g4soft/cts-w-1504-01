SELECT
	mi.ItemCd,
	mi.ItemName,
	mi.SalesPrice,
	mi.OfferPrice,
	mi.HasStock,
	mi.FileCd,
	mi.Notes
FROM 
	MAItems mi
WHERE
	mi.ItemSearchName = @ItemSearchName
	AND mi.DeleteFlag = 0