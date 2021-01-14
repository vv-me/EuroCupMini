USE euro_cup_2016;
#Write a SQL query to compute a list showing the number of substitutions that
#happened in various stages of play for the entire tournament.
SELECT play_stage as PlayStage, COUNT(*) as NoOfSubs FROM  match_mast ma JOIN (
SELECT match_no, team_id, time_in_out FROM player_in_out
GROUP BY match_no, team_id, time_in_out
HAVING COUNT(DISTINCT in_out) = 2) as sq 
ON ma.match_no = sq.match_no
GROUP BY play_stage


