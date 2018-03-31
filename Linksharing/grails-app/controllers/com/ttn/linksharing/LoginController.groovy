package com.ttn.linksharing

import com.ttn.constants.DefaultPassword

/*Create templates for resource/show topic/show user/login user/register*/

class LoginController {

    static allowedMethods=[loginHandler: 'GET']
    def index() {


      }

    def logout() {
        session.invalidate()
        redirect(action:'login/index')
    }

    def loginHandler(String email, String password) {
      //  println(userName)
        User user = User.findByUserNameOrEmail(email, email)

        if(user!=null && user.password==password) {

            if(user.active) {
             session.user=user
                forward(controller: 'user', action: 'index')

            }
            else {
               flash.error = "Your account is not active"

            }
        }
        else
        {
            flash.error="User not found"
        }
        render(view:'index')


    }

    def register(){
        User admin = new User(email: "admin@gmail.com", password: DefaultPassword.PASSWORD, firstName: "admin", lastName: "portal", userName: 'adminPortal', photo: 121, admin: true, active: true)
        if(admin.save()){
            flash.message="Admin Saved Successfully"
        }
        else {
            flash.error="error"
        }

        //normal
        User normal = new User(email: "prachijulka@gmail.com", password: DefaultPassword.PASSWORD, firstName: "Prachi", lastName: "Julka", userName: 'PrachiJulka', photo: 122, admin: false, active: true)
        if(normal.save()){
            flash.message="Normal User Saved Successfully"

        }
        else {
            flash.error="error"

        }

        redirect(action: "index")
    }

}
