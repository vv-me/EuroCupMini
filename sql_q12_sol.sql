USE euro_cup_2016;
#Write a SQL query that returns the total number of goals scored by each position on
#each country’s team. Do not include positions which scored no goals.
SELECT COUNT(goal_id), sc.country_name, pp.position_desc FROM goal_details gd JOIN player_mast pm ON gd.player_id = pm.player_id
JOIN playing_position pp ON pm.posi_to_play = pp.position_id
JOIN soccer_country sc ON gd.team_id  = sc.country_id 
GROUP BY pp.position_id, sc.country_name, pp.position_desc


