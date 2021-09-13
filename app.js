




const debug = require('debug')('my express app');
const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const path = require('path');
const favicon = require('serve-favicon');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');



dotenv.config({ path: './.env' });
const app = express();
const publicDirectory = path.join(__dirname, './public');

app.use(express.static(publicDirectory));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
});



db.connect(function (error) {
    if (error) {
        console.log("Your Issues are actually here, bruh!")
        console.log(error)

    } else {
        console.log("MYSQL connected..")
    }
});
//define routes
app.set('view engine', 'hbs');
app.use('/', require('./routes/pages'));
app.use('/auth', require('./routes/auth'));

app.listen(4000, () => {
    console.log("Server started on http://localhost:4000");

});

/* check*/

