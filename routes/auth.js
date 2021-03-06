const express = require("express");
const authController = require('../controllers/auth');
const Router = express.Router();

Router.post("/register", authController.register)
Router.post("/horoscope", authController.horoscope)
Router.post("/login", authController.login)
Router.post("/HomePage", authController.HomePage)

Router.post("/friendList", authController.friendList)
Router.post("/learnFun", authController.learnFun)
Router.post("/games", authController.games)
Router.post("/games2", authController.games2)
Router.post("/profile", authController.profile)
module.exports = Router;