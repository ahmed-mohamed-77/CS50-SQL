SELECT D.name, SUM(E.pupils) FROM districts AS D
JOIN expenditures AS E ON D.id = E.district_id
GROUP BY D.name;
