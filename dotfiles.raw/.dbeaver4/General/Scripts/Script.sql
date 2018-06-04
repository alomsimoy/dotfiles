SELECT creation.metadata from publication inner join creation
	WHERE creation.id = publication.id
	AND publication.id_connection = 253
	AND publication.publication_date > 1504216800 