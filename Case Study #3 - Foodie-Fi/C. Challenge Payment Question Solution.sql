-- C. Challenge Payment Question

-- Q The Foodie-Fi team wants you to create a new payments table for the year 2020 that includes amounts paid by each customer in the subscriptions table with the following requirements:

-- monthly payments always occur on the same day of month as the original start_date of any monthly paid plan
-- upgrades from basic to monthly or pro plans are reduced by the current paid amount in that month and start immediately
-- upgrades from pro monthly to pro annual are paid at the end of the current billing period and also starts at the end of the month period
-- once a customer churns they will no longer make payments

SELECT s.customer_id, s.plan_id, plan_name, start_date, price
FROM subscriptions s
JOIN plans USING (plan_id)
WHERE year(start_date)=2020
 AND plan_name NOT IN ('trial', 'churn');