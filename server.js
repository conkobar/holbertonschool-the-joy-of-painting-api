/* express server for bob ross paintings */
const express = require('express');
const app = express();
const db = require('db');

// needs to filter eps based on month of broadcast, subject matter, and color palette
// example URL: http://localhost:3000/episodes?month=January&subjects=landscape&colors=blue,green
app.get('/episodes', (req, res) => {
  // Get query parameters from req.query
  const month = req.query.month;
  const subjects = req.query.subjects;
  const colors = req.query.colors;
  const filterMode = req.query.filterMode;
  // prepare new SQL query & return JSON
  let works = {};
  let sql = '';
  // Build SQL query based on query parameters

  // open connection to db
  db.connect();
  // Query database
  db.query(sql, (err, rows) => {
    if (err) {
      throw err;
    }
    works = { ...works, rows };
  });
  // close connection to db
  db.close();
  // return JSON
  res.json(works);
});

// start app
app.listen(3000, () => {
  console.log('Server listening on port 3000');
});

// let sql = 'SELECT * FROM episodes WHERE 1=1';
/* if (month) sql += ` AND month = '${month}'`;
if (subjects) sql += ` AND subject = '${subjects}'`;
if (colors) {
  const colorsArray = colors.split(',');
  if (filterMode === 'AND') {
    colorsArray.forEach((color) => {
      sql += ` AND colorPalette LIKE '%${color}%'`;
    });
  } else {
    sql += ' AND (';
    colorsArray.forEach((color, index) => {
      if (index > 0) {
        sql += ' OR ';
      }
      sql += `colorPalette LIKE '%${color}%'`;
    });
    sql += ')';
  }
} */
