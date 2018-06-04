SELECT DISTINCT(c.profile)
FROM connection as c
JOIN publication as p
JOIN taxonomy as t
JOIN publications_taxonomies as pt
WHERE c.id = p.id_connection
AND p.id = pt.publication_id
AND t.id = pt.taxonomy_id
AND t.id = ?;