USE euro_cup_2016;
#Write a SQL query to find all the venues where matches with penalty shootouts were
#played.
SELECT v.venue_name FROM match_mast m JOIN soccer_venue v ON m.venue_id = v.venue_id
WHERE match_no IN (SELECT DISTINCT match_no FROM penalty_shootout p)
