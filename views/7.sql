In 7.sql, write a SQL query to list the English titles of the 5 brightest prints by
Hiroshige, from most to least bright. Compare them to this list on Wikipedia to see
if your results match the print’s aesthetics.
Executing 7.sql results in a table with 1 column and 5 rows

SELECT english_title FROM
WHERE artist = 'Hiroshige'
ORDER BY 
