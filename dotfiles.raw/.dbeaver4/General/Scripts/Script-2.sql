SELECT creation.id, publication.id_external_post, publication.publication_date, creation.metadata, creation.status, content.`data`
	from publication
	inner join creation
	inner join content
	WHERE creation.id = publication.id
	AND content.id = publication.id_content
	AND publication.id_connection = 253
	
	