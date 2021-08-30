
const debug = require('debug')('my express app');
const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const path = require('path');
const favicon = require('serve-favicon');
const logger = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');
const { Connection, Request } = require("tedious");

// Create connection to database
const config = {
    authentication: {
        options: {
            userName: "nawarshahsaba", // update me
            password: "BlogPost1" // update me
        },
        type: "default"
    },
    server: "nawarshahsaba.database.windows.net", // update me
    options: {
        database: "nodejssignup", //update me
        encrypt: true
    }
};

const connection = new Connection(config);

// Attempt to connect and execute queries if connection goes through
connection.on("connect", err => {
    if (err) {
        console.error(err.message);
    } else {
        console.log("MYSQL connected..");
    }
});

connection.connect();
dotenv.config({ path: './.env' });
const app = express();
const publicDirectory = path.join(__dirname, './public');

app.use(express.static(publicDirectory));
app.use(express.urlencoded({ extended: false }));
app.use(express.json());
/*const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
});

app.set('view engine', 'hbs');

db.connect(function (error) {
    if (error) {
        console.log("Your Issues are actually here, bruh!")
        console.log(error)

    } else {
        console.log("MYSQL connected..")
    }
});*/
//define routes
app.use('/', require('./routes/pages'));
app.use('/auth', require('./routes/auth'));

app.listen(3000, () => {
    console.log("Server started on http://localhost:3000");

});
/*
// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'pug');

// uncomment after placing your favicon in /public
//app.use(favicon(__dirname + '/public/favicon.ico'));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', routes);
app.use('/users', users);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
    const err = new Error('Not Found');
    err.status = 404;
    next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
    app.use(function (err, req, res, next) {
        res.status(err.status || 500);
        res.render('error', {
            message: err.message,
            error: err
        });
    });
}

// production error handler
// no stacktraces leaked to user
app.use(function (err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
        message: err.message,
        error: {}
    });
});


*/

