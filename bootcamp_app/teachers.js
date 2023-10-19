

const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});




pool.query(`

  SELECT teachers.name AS teacher, cohorts.name AS cohort
  FROM assistance_requests
  JOIN teachers ON teachers.id = teacher_id
  JOIN students ON students.id = student_id
  JOIN cohorts ON students.cohort_id = cohorts.id
  WHERE cohorts.name = '${process.argv[2]}'
  GROUP BY teachers.name, cohorts.name
  ORDER BY teachers.name;`
  
  
)

.then(res => {
  res.rows.forEach(result => {
    console.log(`${result.cohort}: ${result.teacher}`);
  })
});
