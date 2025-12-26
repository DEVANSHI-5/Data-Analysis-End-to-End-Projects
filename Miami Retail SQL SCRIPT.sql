CREATE OR REPLACE VIEW Table_joined as 
SELECT *,dayname(s.date) as day_of_week,
case when weekday(s.date) in (5,6) then 'weekend' else "weekday" end as is_weekend
FROM sales_2yrs as s
LEFT JOIN survey_2yrs USING (date)
LEFT JOIN weather_2yrs USING (date);
