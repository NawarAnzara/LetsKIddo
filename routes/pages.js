const express = require("express");
const Router = express.Router();

const mysql = require('mysql');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const auth = express.Router();
let User = require('../controllers/auth');



const db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE
});

Router.get("/", function(req, res){

    res.render(`landing`)
});
Router.get("/register", function(req, res){

    res.render(`register`)
});
Router.get("/login", function (req, res) {
    res.render("login")
});

Router.get("/HomePage", function (req, res) {
    db.query("SELECT * FROM blog", async function (error, results) {
        if (error) {
            console.log(error);
        }
        console.log(results.length);
        var blogContentData = [];
        var blogPicUrlData = [];
        var blogNameData = [];

        for (var i = 0; i < results.length; ++i) {
            blogContentData[i] = results[i].blogContent;
            blogPicUrlData[i] = results[i].PictureUrl;
            blogNameData[i] = results[i].Name;
        }
        console.log("Successful");


        res.render("\HomePage", {
            UserID: User.UserID,
            Name: User.Name,
            DescribeYourself: User.DescribeYourself,
            PictureUrl: User.PictureUrl,
            AvatarName: User.AvatarName,
            sex: User.sex,
            AgeGroup: User.Agegroup,
            blogContentData: blogContentData,
            blogPicUrlData: blogPicUrlData,
            blogNameData: blogNameData


        });




    });
});

Router.get("/friendList", function (req, res) {
    db.query("SELECT * FROM users", async function (error, results) {
        if (error) {
            console.log(error);
        }
        console.log(results.length);
        var userdescribeData = [];
        var userPicUrlData = [];
        var userNameData = [];

        for (var i = 0; i < results.length; ++i) {
            if (results[i].UserID != User.UserID) {
                userdescribeData[i] = results[i].DescribeYourself;
                userPicUrlData[i] = results[i].PictureUrl;
                userNameData[i] = results[i].Name;
            }

        }
        console.log("Successful");


        res.render("friendList", {
            UserID: User.UserID,
            Name: User.Name,
            DescribeYourself: User.DescribeYourself,
            PictureUrl: User.PictureUrl,
            AvatarName: User.AvatarName,
            sex: User.sex,
            AgeGroup: User.Agegroup,
            userdescribeData: userdescribeData,
            userPicUrlData: userPicUrlData,
            userNameData: userNameData


        });
    });

});

Router.get("/games", function (req, res) {
    res.render("games", {
        UserID: User.UserID,
        Name: User.Name,
        DescribeYourself: User.DescribeYourself,
        PictureUrl: User.PictureUrl,
        AvatarName: User.AvatarName,
        sex: User.sex,
        AgeGroup: User.Agegroup



    })
});
Router.get("/learnFun", function (req, res) {
    res.render("learnFun", {
        UserID: User.UserID,
        Name: User.Name,
        DescribeYourself: User.DescribeYourself,
        PictureUrl: User.PictureUrl,
        AvatarName: User.AvatarName,
        sex: User.sex,
        AgeGroup: User.Agegroup



    })
});
Router.get("/horoscope", function (req, res) {
    res.render("horoscope", {
        UserID: User.UserID,
        Name: User.Name,
        DescribeYourself: User.DescribeYourself,
        PictureUrl: User.PictureUrl,
        AvatarName: User.AvatarName,
        sex: User.sex,
        AgeGroup: User.Agegroup



    })
});

Router.get("/profile", function (req, res) {

    res.render("profile", {
        UserID: User.UserID,
        Name: User.Name,
        DescribeYourself: User.DescribeYourself,
        PictureUrl: User.PictureUrl,
        AvatarName: User.AvatarName,
        sex: User.sex,
        AgeGroup: User.Agegroup



    })
});

Router.get("/games", function (req, res) {
    res.render("games")
});
module.exports = Router;