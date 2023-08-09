const mysql = require('mysql');

// Create a connection to the database
const db = mysql.createConnection({
  host: '127.0.0.1',
  user: 'buzz',
  password: 'password',
  database: 'joy',
});

// Connect to the database
// db.connect();

// Execute a query
// db.query('SELECT * FROM episodes', (error, results, fields) => {
//   if (error) throw error;
//   console.log(results);
// });

// Close the connection
// db.end();

module.exports = db;
