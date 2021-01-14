USE euro_cup_2016;
#Write a SQL query to find the country where the most assistant referees come from,
#and the count of the assistant referees.
SELECT sc.country_name as CountryName, COUNT(ass_ref_id)
FROM asst_referee_mast arm JOIN soccer_country sc ON arm.country_id = sc.country_id
GROUP BY arm.country_id, sc.country_name
ORDER BY 2 DESC
LIMIT 1
