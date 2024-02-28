const express = require('express');
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser'); // No longer Required
const mysql = require('mysql'); // Not required -> moved to userController

require('dotenv').config();

const app = express();
const port = process.env.PORT || 5000;

// Parsing middleware
// Parse application/x-www-form-urlencoded
// app.use(bodyParser.urlencoded({ extended: false }));
app.use(express.urlencoded({ extended: true })); // New
 
// Parse application/json

app.use(express.json()); // New


// Static Files
app.use(express.static('public'));
// Templating Engine

const handlebars = exphbs.create({ extname: '.hbs', });
app.engine('.hbs', handlebars.engine);
app.set('view engine', '.hbs');

// let connection = mysql.createConnection({
//   host: process.env.DB_HOST,
//   user: process.env.DB_USER,
//   password: process.env.DB_PASS,
//   database: process.env.DB_NAME
// });
const pool = mysql.createPool({

    connectionLimit : 100,
    host        : process.env.DB_HOST,
    user        : process.env.BD_USER,
    pass        : process.env.DB_PASS,
    database    : process.env.DB_NAME

});

//CONNECTING TO MY LOCAL DATABASE 
 pool.getConnection((err, connection) => {  
    if(err) throw err; 
    console.log('connected as ID' + connection.threadId);  
});

const routes = require('./server/routes/user');
app.use('/', routes);




app.listen(port, () => console.log(`Listening on port ${port}`));