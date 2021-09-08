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

exports.login = function (req, res) {
    console.log(req.body);
    const UserID = req.body.UserID;
    module.exports.UserID = UserID;

    const Password = req.body.Password;
    
    if (!UserID || !Password) {
        return res.status(400).render('login', {
            message: 'Please provide an ID or password'
        })
    }

    db.query("SELECT UserID, Name, DescribeYourself, PictureUrl, AvatarName, sex, AgeGroup, Password from users WHERE UserID = ?", [UserID], async function (error, results) {
        if (error) {
            console.log(error);
        }
        console.log(results);
        module.exports.UserID = results[0].UserID;
        module.exports.Name = results[0].Name;
        module.exports.DescribeYourself = results[0].DescribeYourself;
        module.exports.PictureUrl = results[0].PictureUrl;
        module.exports.AvatarName = results[0].AvatarName;
        module.exports.sex = results[0].sex;
        module.exports.Agegroup = results[0].AgeGroup;
      
         if (!(results) || !(await bcrypt.compare(Password, results[0].Password))) {
            res.status(401).render('login', {
                message: 'ID or Password is incorrect'
            });
        } else{
             res.render("\HomePage", {
                 UserID: results[0].UserID,
                 Name: results[0].Name,
                 DescribeYourself: results[0].DescribeYourself,
                 PictureUrl: results[0].PictureUrl,
                 AvatarName: results[0].AvatarName,
                 sex: results[0].sex,
                 AgeGroup: results[0].AgeGroup

             });
        }

    });

        


    


}

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
