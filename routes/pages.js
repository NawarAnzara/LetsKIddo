const express = require("express");
const Router = express.Router();

Router.get("/", function(req, res){

    res.render(`index`)
});
Router.get("/register", function(req, res){

    res.render(`register`)
});

module.exports = Router;