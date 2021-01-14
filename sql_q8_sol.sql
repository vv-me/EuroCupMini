USE euro_cup_2016;
#Write a SQL query to find the match number for the game with the highest number of
#penalty shots, and which countries played that match.

SELECT md.match_no, country_name FROM match_details md JOIN (
SELECT match_no, RANK() OVER (ORDER BY cnt DESC) as rn FROM
(
SELECT match_no, COUNT(*) cnt FROM penalty_shootout
GROUP BY match_no
) ps ) sq ON sq.rn = 1 AND md.match_no = sq.match_no
JOIN soccer_country sc ON md.team_id = sc.country_id