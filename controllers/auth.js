const express = require("express");
const mysql = require('mysql');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const auth = express.Router();



const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
});

exports.register = function (req, res) {
    console.log(req.body);
    const { UserID, Name, DescribeYourself, PictureUrl, AvatarName, sex, AgeGroup, Password, confirm_password } = req.body;

    db.query("SELECT UserID from users WHERE UserID = ?", [UserID], async function (error, results) {
        if (error) {
            console.log(error);
        }
        if (results > 0) {
            return res.render('register', {
                message: "This Id is already in use"
            });
        } else if (Password !== confirm_password) {
            return res.render('register', {
                message: "The passwords do not match"
            });
        }
        let hashedPassword = await bcrypt.hash(Password, 8);
        console.log(hashedPassword);

        db.query('INSERT INTO users(UserID, Name, DescribeYourself, PictureUrl, AvatarName, sex, AgeGroup, Password) VALUES(?,?,?,?,?,?,?,?)', [UserID, Name, DescribeYourself, PictureUrl, AvatarName, sex, AgeGroup, hashedPassword], function (error, results) {

            if (error) {
                console.log(error)
            } else {
                console.log(results);
                return res.render('register', {
                    message: "User registered"
                });

            }
        });


    });

  
}
