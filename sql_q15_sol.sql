USE euro_cup_2016;
#Write a SQL query to find the referees who booked the most number of players.
SELECT rm.referee_name, COUNT(DISTINCT pb.player_id) as NumberOfBookings FROM match_mast ma JOIN player_booked pb ON ma.match_no = pb.match_no
JOIN referee_mast rm ON ma.referee_id = rm.referee_id
GROUP BY ma.referee_id, rm.referee_name
ORDER BY NumberOfBookings DESC
limit 1
