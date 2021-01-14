USE euro_cup_2016;
#Write a SQL query to find all the defenders who scored a goal for their teams.
SELECT DISTINCT(pm.player_name) FROM goal_details gd JOIN player_mast pm ON gd.player_id = pm.player_id
JOIN playing_position pp ON pm.posi_to_play = pp.position_id
AND pp.position_desc = 'Defenders'

