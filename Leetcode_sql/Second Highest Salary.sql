WITH RankedSalaries AS (
    SELECT 
        salary,
        DENSE_RANK() OVER (ORDER BY salary DESC) AS rank
    FROM 
        Employee
)
SELECT 
    CASE 
        WHEN MAX(rank) >= 2 THEN MAX(CASE WHEN rank = 2 THEN salary END)
        ELSE NULL
    END AS SecondHighestSalary
FROM 
    RankedSalaries;
