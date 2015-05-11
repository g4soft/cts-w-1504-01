SELECT 
	mc.*
FROM
	MACategories mc
WHERE
	mc.DeleteFlag = 0
ORDER BY
	mc.SortKey ASC