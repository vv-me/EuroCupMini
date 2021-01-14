USE euro_cup_2016;
#Write a SQL query to find the number of captains who were also goalkeepers.
SELECT COUNT(DISTINCT player_captain) AS GK_Captain FROM match_details md JOIN match_captain mc 
ON md.match_no = mc.match_no AND md.player_gk = mc.player_captain;