USE euro_cup_2016;
# Write a SQL query to find all available information about the players under contract to
# Liverpool F.C. playing for England in EURO Cup 2016.

SELECT * from player_mast PM JOIN soccer_country sc ON PM.team_id = sc.country_id
WHERE sc.country_name = 'England' AND pm.playing_club = 'Liverpool'
