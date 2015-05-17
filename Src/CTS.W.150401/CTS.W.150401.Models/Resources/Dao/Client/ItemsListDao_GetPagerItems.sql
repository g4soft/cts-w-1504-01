SELECT 
	mi.*
FROM
	MAItems mi
	LEFT OUTER JOIN MACategories mc
		ON (mi.CategoryCd = mc.CategoryCd
			AND mc.DeleteFlag = 0)
WHERE
	(mi.ItemName LIKE '%' + @ItemSearchName + '%' 
		OR mi.ItemSearchName LIKE '%' + @ItemSearchName + '%'
		OR @ItemSearchName = '')
	AND (mc.CategoryName LIKE '%' + @CategorySearchName + '%' 
		OR mc.CategorySearchName LIKE '%' + @CategorySearchName + '%'
		OR @CategorySearchName = '')
	AND mi.DeleteFlag = 0
ORDER BY
	mi.SortKey ASC