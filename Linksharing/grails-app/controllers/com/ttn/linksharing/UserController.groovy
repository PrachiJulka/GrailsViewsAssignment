package com.ttn.linksharing
/*
Use read() for /topic/show and load() for /resource/delete & /topic/delete action.
*/
class UserController {

    def index() {
        /*render(session.user.userName)*/
       /* session.user.getUnreadResource()*/
    }

    def show(Integer id){

        Topic topic=Topic.get(id)
        if(topic.visibility==Visibility.PUBLIC) {
           render("success")
        }
        else{
            if(Subscription.findByTopicsAndUser(topic,session.user))
                render("Subscription Exists")
            else
            {
                flash.error="Subscription does not exists"
                redirect(action:"login/index")
            }
        }
     }
}
