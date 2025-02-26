SELECT REL_YEAR, MOVIE_NAME, ACT_NAME, LANG FROM movie_data

SELECT COUNT(*) FROM MOVIE_DATA WHERE ACT_NAME = 'Amala Paul'

SELECT COUNT(*) FROM MOVIE_DATA WHERE ACT_NAME = 'Amala Paul' AND LANG = 'Tamil'

SELECT COUNT(*) FROM MOVIE_DATA WHERE ACT_NAME = 'Amala Paul' AND (LANG = 'Tamil' or lang='Malayalam')

SELECT COUNT(*) FROM MOVIE_DATA WHERE ACT_NAME = 'Amala Paul' AND (LANG in ('Tamil','Malayalam'))

SELECT REL_YEAR, MOVIE_NAME, ACT_NAME, LANG FROM movie_data ORDER BY REL_YEAR asc 

SELECT REL_YEAR, MOVIE_NAME, ACT_NAME, LANG FROM movie_data WHERE MOVIE_NAME LIKE 'Anan%'

SELECT REL_YEAR, MOVIE_NAME, ACT_NAME, LANG FROM movie_data

SELECT COUNT(*) FROM MOVIE_DATA WHERE ACT_NAME = 'Amala Paul'

SELECT COUNT(*) FROM MOVIE_DATA WHERE ACT_NAME = 'Amala Paul' AND LANG = 'Tamil'

SELECT COUNT(*) FROM MOVIE_DATA WHERE ACT_NAME = 'Amala Paul' AND (LANG = 'Tamil' or lang='Malayalam')

SELECT COUNT(*) FROM MOVIE_DATA WHERE ACT_NAME = 'Amala Paul' AND (LANG in ('Tamil','Malayalam'))

SELECT REL_YEAR, MOVIE_NAME, ACT_NAME, LANG FROM movie_data ORDER BY REL_YEAR asc 

SELECT REL_YEAR, MOVIE_NAME, ACT_NAME, LANG FROM movie_data WHERE MOVIE_NAME LIKE 'Anan%'

SELECT LANG, COUNT(*) 
  FROM MOVIE_DATA 
 GROUP BY LANG 

SELECT LANG, COUNT(*) 
  FROM MOVIE_DATA 
 GROUP BY LANG 
HAVING LANG = "Tamil"

SELECT LANG, COUNT(*) 
  FROM MOVIE_DATA 
 GROUP BY LANG 
HAVING LANG in ("Tamil","Malayalam")

SELECT LANG, COUNT(*) 
  FROM MOVIE_DATA 
 GROUP BY LANG 
HAVING count(lang) > 100

SELECT LANG, COUNT(*) 
  FROM MOVIE_DATA 
 GROUP BY LANG 
HAVING count(*) > 100

SELECT LANG, COUNT(*) "Number of Movies"
  FROM MOVIE_DATA 
 GROUP BY LANG 
HAVING count(*) > 100

SELECT ACT_NAME, LANG, COUNT(*) "Number of Movies"
  FROM MOVIE_DATA 
 GROUP BY ACT_NAME,LANG 
