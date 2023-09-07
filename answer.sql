1. Write a query to get the sum of impressions by day.
 SELECT Sum(impressions)
 FROM marketing_data
 ORDER BY date;

2. Write a query to get the top three revenue-generating states in order of best to worst. How much revenue did the third best state generate?
SELECT SUM(revenue) AS total_revenue
FROM website_revenue
GROUP BY state
ORDER BY total_revenue DESC
LIMIT 3;
 Ohio was the third best and generated $37577
'3. Write a query that shows total cost, impressions, clicks, and revenue of each campaign. Make sure to include the campaign name in the output.'
 SELECT SUM(cost) AS total_cost, SUM(impressions) AS total_impressions, SUM(clicks) AS total_clicks
 FROM marketing_data
     (SELECT revenue FROM website_revenue)
        (SELECT name 
          FROM campaign_info)
     
4. 'Write a query to get the number of conversions of Campaign5 by state. Which state generated the most conversions for this campaign?'
 SELECT SUM(conversions)
 FRROM marketing_data 
 WHERE campaign_id = '99058240'
 ORDER BY state
 Georgia generated the most conversions
'5. In your opinion, which campaign was the most efficient, and why?'
I would say that the most efficient was Ohio due to its clicks, impressions, and conversions.
