const User = require('./../../model/User')
const bcrypt = require('bcryptjs')

exports.getLogin = (req,res)=>{
    res.render('/Login')
}

exports.postLogin = (res,req)=> {
    console.log(req.body);
    User.findOne({
        email: req.body.email
    })
    .then(user =>{
        if(user){
            bcrypt.compare(req.body.password, user.password,(err,match)=>{
                if(err) {
                    console.log("something is wrong");
                    // for API
                    res.redirect("/login")
                }
                if(match) {
                    req.session.email = req.body.email;
                    //for api
                    
                } else {
                    console.log("credentials does not match")
                    res.redirect("/lib/Login")
                }
            })
        } else {
            console.log("no user found");
            //for api
        }
    })
    .catch(err => {
        console.log(err)
    })
}
