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

module.exports = Router;