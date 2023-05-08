const User = require("../../model/User")
const bcrypt = require ("bcryptjs");

exports.getSignup = (req,res) => {
    res.render("lib/Sign")
}