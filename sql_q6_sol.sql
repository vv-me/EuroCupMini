USE euro_cup_2016;
#Write a SQL query to find the number of matches that were won by a single point, but
#do not include matches decided by penalty shootout.
SELECT COUNT(DISTINCT match_no) FROM (
SELECT ma.match_no,abs(first_value(goal_score) OVER (partition by ma.match_no) - last_value(goal_score) OVER (partition by ma.match_no)) AS diff 
FROM match_details ma 
JOIN (SELECT match_no FROM match_mast WHERE results = "WIN" AND decided_by <> "P") mn
ON ma.match_no = mn.match_no) fin WHERE diff = 1

