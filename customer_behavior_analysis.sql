/*
  =============================================================================
  E-COMMERCE CUSTOMER BEHAVIOR ANALYSIS (COSMETICS)
  Objective: Analyze the sales funnel, price sensitivity, and brand performance
  to optimize conversion rates and identify friction points.
  =============================================================================
*/

-- STEP 1: Initial data exploration to understand the dataset structure and schema.
SELECT *
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`
LIMIT 1000;

-- STEP 2: Identifying unique customer interaction types to map the user journey.
SELECT DISTINCT event_name
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`;

-- STEP 3: Quantifying the e-commerce funnel to analyze conversion and abandonment.
SELECT event_name, COUNT(event_name) AS event_count
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`
GROUP BY event_name
ORDER BY event_count DESC;

-- STEP 4: Testing Price Sensitivity Hypothesis - Analyzing average prices per event type.
SELECT event_name, ROUND(AVG(price), 2) AS avg_price
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`
GROUP BY event_name
ORDER BY avg_price DESC;

-- STEP 5: Daily engagement analysis to track platform activity trends over time.
SELECT DATE(time) AS event_date, COUNT(event_name) AS total_events
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`
GROUP BY event_date
ORDER BY event_date ASC;

-- STEP 6: Isolating purchase events to identify revenue and demand fluctuations.
SELECT DATE(time) AS event_date, event_name, COUNT(event_name) AS purchase_count
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`
WHERE event_name = 'purchase'
GROUP BY event_date, event_name
ORDER BY event_date ASC;

-- STEP 7: Identifying top-performing brands (excluding undefined data).
SELECT brand, COUNT(brand) AS total_sales
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`
WHERE event_name = 'purchase' AND brand != 'Not defined'
GROUP BY brand
ORDER BY total_sales DESC
LIMIT 20;

/* 
STEP 8: Funnel analysis for the top brand ('runail') to pinpoint drop-off points. 
This query quantifies the exact volume of friction in the customer journey.
*/
SELECT 
    event_name, 
    brand, 
    COUNT(brand) AS interaction_count
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`
WHERE brand = 'runail'
GROUP BY event_name, brand
ORDER BY interaction_count DESC;

/* 
STEP 9: Identifying specific products causing cart abandonment.
This drill-down analysis isolated the exact product IDs causing the friction, 
ultimately revealing the "Price-Shipping" mismatch.
*/
SELECT 
    product_id, 
    brand, 
    event_name, 
    COUNT(event_name) AS total_removals
FROM `data-analysis-projects-496119.cosmetics_ecommerce.events_raw`
WHERE brand = 'runail' AND event_name = 'remove_from_cart'
GROUP BY product_id, brand, event_name
ORDER BY total_removals DESC
LIMIT 20;
