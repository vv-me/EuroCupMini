USE euro_cup_2016;
#Write a SQL query to find referees and the number of bookings they made for the
#entire tournament. Sort your answer by the number of bookings in descending order.
SELECT rm.referee_name, COUNT(*) as NumberOfBookings FROM match_mast ma JOIN player_booked pb ON ma.match_no = pb.match_no
JOIN referee_mast rm ON ma.referee_id = rm.referee_id
GROUP BY ma.referee_id, rm.referee_name
ORDER BY 2 DESC