SELECT p.id, p.content FROM publication AS p
	INNER JOIN `connection` AS c ON p.id_connection = c.id
	INNER JOIN channel AS ch ON ch.id = c.id_channel
	WHERE ch.name LIKE 'Twitter'
	ORDER BY id DESC;