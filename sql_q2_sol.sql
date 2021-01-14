USE euro_cup_2016;
#Write a SQL query to find the number of matches that were won by penalty shootout.
SELECT COUNT(*) FROM match_details WHERE decided_by = 'P' AND win_lose = 'W'


