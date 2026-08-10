# 🛒 E-Commerce Customer Behavior & Cart Abandonment

### 📋 Project Objective
The goal of this project was to analyze over 3 million customer interactions to understand why people leave their shopping carts without buying (cart abandonment). I used Google BigQuery to clean and explore the data, and Power BI to build a dashboard to help the business improve its sales strategy. 

### 🛠️ Tools & Technologies
* **Data Lake:** Google Cloud Storage (GCS)
* **Data Warehouse / SQL Engine:** Google BigQuery
* **Data Visualization:** Microsoft Power BI

### 📊 Key Business Insights
* **The "Price-Checkout" Friction:** I initially thought high prices were causing people to abandon their carts. However, my SQL drill-down analysis showed that some of the most abandoned products were actually very cheap (e.g., $0.40). This suggests potential checkout friction, where low-priced items may be more vulnerable to additional costs such as shipping or minimum basket-size requirements.
* **Top-Performing Brand Concentration:** One brand ("runail") generates the most sales but also shows substantial cart removals, with 80,411 adds to cart vs. 49,510 removals.
* **End-of-Month Drop:** Daily purchase trends show a noticeable decline toward the end of the month, with activity falling from around 156K events to 31K events by December 31st. This pattern may indicate a potential relationship with end-of-month consumer spending cycles.

### 💡 Strategic Recommendations
* **Fix the Checkout Shock:** Introduce bundle offers for low-priced items or test dynamic shipping rules to reduce potential checkout friction for low-value purchases.
* **End-of-Month Campaigns:** Run targeted discounts or free-shipping campaigns during the last week of the month to help stabilize sales activity.
