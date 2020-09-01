SELECT	*  FROM
	(
	SELECT
	CASE
			
		WHEN payType = 1 THEN
				'现金' 
		WHEN payType = 2 THEN
				'微信' 
		WHEN payType = 3 THEN
				'支付宝' 
	END AS payType,
		 count( * ) AS count
		FROM
			charge_record 
		WHERE
			parkCode = 'jd31011400037' 
			AND payTime >= CURRENT_DATE ( ) 
			AND ( payType = 1 OR payType = 2 OR payType = 3 ) 
		GROUP BY
			payType 
		UNION
		SELECT '现金',0
		UNION
		SELECT '微信',0 
		UNION
		SELECT '支付宝',0 
		) a 
GROUP BY
	payType