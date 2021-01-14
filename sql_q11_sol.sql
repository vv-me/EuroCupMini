USE euro_cup_2016;
#Write a SQL query to find the players, their jersey number, and playing club who
#were the goalkeepers for England in EURO Cup 2016.
SELECT distinct pm.player_name, pm.jersey_no, pm.playing_club  FROM match_details md JOIN player_mast pm ON md.player_gk = pm.player_id
JOIN soccer_country sc ON pm.team_id = sc.country_id AND sc.country_name = "England"