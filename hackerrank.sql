SELECT ci.city_name, pr.product_name, ROUND(sum(ii.line_total_price), 2) AS tot
FROM city ci, customer cu, invoice i, invoice_item ii, product pr
WHERE ci.id = cu.city_id AND cu.id = i.customer.id AND i.id = ii.invoice.id AND ii.product_id = pr.id
GROUP BY ci.city_name, pr.product_name
ORDER BY tot DESC, ci.city_name, pr.product_name;


SELECT (months*salary) as earnings, COUNT(*) FROM employee
GROUP BY earnings
ORDER BY earnings DESC LIMIT 1;
