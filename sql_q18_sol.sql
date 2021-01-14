USE euro_cup_2016;
#Write a SQL query to find the highest number of foul cards given in one match.
SELECT COUNT(*) as HighestFouls from player_booked GROUP BY match_no
ORDER BY 1 DESC
LIMIT 1

