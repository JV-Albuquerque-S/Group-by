SELECT COUNT('endDate') as "currentExperiences" FROM experiences;

SELECT u.id, COUNT(e.id) AS "educations"
       FROM users u
       JOIN educations e ON e."userId"=u.id
       GROUP BY u.id;

SELECT u.name AS "writer", COUNT(t.id) AS "testimonailCount"
       FROM users u
       JOIN testimonials t ON t."writerId"=u.id
       WHERE u.id = 435
       GROUP BY u.id;

SELECT MAX(j.salary) AS "maximumSalary", r.name AS role
       FROM roles r
       JOIN jobs j ON j."roleId" = r.id
       GROUP BY r.name
       ORDER BY "maximumSalary";
