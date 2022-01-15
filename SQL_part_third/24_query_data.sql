-- SELECT first_name, last_name, email, title
-- FROM employees 
-- LEFT JOIN projects_employees ON employees.id = employee_id
-- lEFT JOIN projects ON projects.id = project_id;

-- SELECT first_name, last_name, email, title, t.name
-- FROM employees AS e
-- INNER JOIN teams AS t ON e.team_id = t.id
-- LEFT JOIN projects_employees AS pe ON e.id = employee_id
-- lEFT JOIN projects AS p ON p.id = project_id
-- WHERE t.name = 'R&D';

SELECT first_name, last_name, cb.name
FROM employees AS e
INNER JOIN teams AS t ON e.team_id = t.id
INNER JOIN company_buildings AS cb ON t.building_id = cb.id
WHERE cb.id = 3;
