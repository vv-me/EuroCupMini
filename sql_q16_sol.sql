USE euro_cup_2016;
#Write a SQL query to find referees and the number of matches they worked in each
#venue.
SELECT rm.referee_name, venue_name, COUNT(*) as NumberOfMatches FROM match_mast ma JOIN referee_mast rm 
ON ma.referee_id = rm.referee_id JOIN soccer_venue sv ON ma.venue_id = sv.venue_id
GROUP BY ma.referee_id, rm.referee_name, ma.venue_id, venue_name
ORDER BY 1,2 
