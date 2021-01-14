USE euro_cup_2016;
#Write a SQL query to find the goalkeeper’s name and jersey number, playing for
#Germany, who played in Germany’s group stage matches.
SELECT distinct pm.player_name, pm.jersey_no FROM match_details md JOIN player_mast pm ON md.player_gk = pm.player_id
AND md.play_stage = "G"
JOIN soccer_country sc ON pm.team_id = sc.country_id AND sc.country_name = "Germany"
