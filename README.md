# 🛒 E-Commerce Customer Behavior & Cart Abandonment

### 📋 Project Objective
The goal of this project was to analyze over 3 million customer interactions to understand why people leave their shopping carts without buying (cart abandonment). I used Google BigQuery to clean and explore the data, and Power BI to build a dashboard to help the business improve its sales strategy. 

### 🛠️ Tools & Technologies
* **Data Lake:** Google Cloud Storage (GCS)
* **Data Warehouse / SQL Engine:** Google BigQuery
* **Data Visualization:** Microsoft Power BI

### 📊 Key Business Insights
* **The "Price-Checkout" Friction:** I initially thought high prices were causing people to abandon their carts. However, my SQL drill-down analysis showed that the most abandoned products were actually very cheap (e.g., $0.40). This suggests a strong price-checkout friction, where very low-priced items are frequently abandoned, likely due to disproportionate additional fees (like shipping) or minimum basket size thresholds at checkout.
* **Top-Performing Brand Concentration:** One brand ("runail") brings in the most sales, but it also suffers from a massive abandonment rate (80,411 adds to cart vs. 49,510 removals). 
* **End-of-Month Drop:** Daily engagement trends show that sales consistently drop towards the end of the month (e.g., from 156K events to just 31K events by December 31st). This temporal trend aligns with consumer purchasing power cycles before payday.

### 💡 Strategic Recommendations
* **Fix the Checkout Shock:** Introduce bundle offers for low-priced items or create dynamic shipping rules so customers don't feel surprised by checkout fees when buying cheap products.
* **End-of-Month Campaigns:** Run targeted discounts or free shipping campaigns during the last week of the month to keep sales steady and prevent the revenue drop.
