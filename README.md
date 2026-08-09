# 🛒 E-Commerce Customer Behavior & Cart Abandonment

### 📋 Project Objective
The goal of this project was to analyze over 3 million customer interactions to understand why people leave their shopping carts without buying (cart abandonment)[cite: 9]. I used Google BigQuery to clean and explore the data, and Power BI to build a dashboard to help the business improve its sales strategy[cite: 9, 10]. 

### 🛠️ Tools & Technologies
* **Data Lake:** Google Cloud Storage (GCS)[cite: 10]
* **Data Warehouse / SQL Engine:** Google BigQuery[cite: 9, 10]
* **Data Visualization:** Microsoft Power BI[cite: 9, 10]

### 📊 Key Business Insights
* **The "Price-Shipping" Mismatch:** I initially thought high prices were causing people to abandon their carts[cite: 9, 10]. However, my SQL drill-down analysis showed that the most abandoned products were actually very cheap (e.g., $0.40)[cite: 9, 10]. This means customers are leaving because the shipping costs are too high compared to the cheap product[cite: 9, 10].
* **The 80/20 Rule (Top Brand):** One brand ("runail") brings in the most sales, but it also has a massive abandonment rate (80,411 adds to cart vs. 49,510 removals)[cite: 9, 10]. 
* **End-of-Month Drop:** Sales consistently drop in the last week of the month (e.g., from 156K events to just 31K events by December 31st)[cite: 9, 10]. This aligns with consumer purchasing power cycles before payday[cite: 9].

### 💡 Strategic Recommendations
* **Fix the Checkout Shock:** Introduce bundle offers for low-priced items or create dynamic shipping rules so customers don't feel surprised by shipping fees at checkout[cite: 9].
* **End-of-Month Campaigns:** Run targeted discounts or free shipping campaigns during the last week of the month to keep sales steady and prevent the revenue drop[cite: 9].
