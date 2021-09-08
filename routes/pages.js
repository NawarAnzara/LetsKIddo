const express = require("express");
const Router = express.Router();

Router.get("/", function(req, res){

    res.render(`index`)
});
Router.get("/register", function(req, res){

    res.render(`register`)
});
Router.get("/login", function (req, res) {
    res.render("login")
});

Router.get("/HomePage", function (req, res) {
    res.render("HomePage")
});

Router.get("/games", function (req, res) {
    res.render("games")
});
module.exports = Router;