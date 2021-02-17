USE euro_cup_2016;
#Write a SQL query to find the substitute players who came into the field in the first
#half of play, within a normal play schedule.
-- If you are asking for total count of substitions in all matches
SELECT COUNT(player_id) FROM player_booked WHERE play_half = 1 and play_schedule = 'NT' and sent_off <> 'Y';
-- If you are asking for total count of substitions in per match
SELECT COUNT(player_id), match_no FROM player_booked WHERE play_half = 1 and play_schedule = 'NT' and sent_off <> 'Y'
GROUP BY match_no;
-- If you are asking for total count of players who were substituted 
SELECT COUNT(DISTINCT player_id) FROM player_booked WHERE play_half = 1 and play_schedule = 'NT' and sent_off <> 'Y'
