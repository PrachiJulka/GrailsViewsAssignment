package com.ttn.linksharing

import org.hibernate.ObjectNotFoundException

//If a topic is not saved errors should be logged flash error should be set and error text should be rendered
class TopicController {

    def index() { }

    def show(ResourceSearchCO resourceSearchCO){
        def topic = Resource.search(resourceSearchCO).list()
        render("CreatedBy- $topic.createdby.firstname Topicname- $topic.name")
       User user=User.read(session.user.id)
        //println user.topics
        render(user.topics)
    }

    def delete(Long id){
        Topic topic=Topic.load(id)
        topic.delete(flush:true)
            render("sucess")


    }

    def save(Topic topic,String seriousness){
        topic.createdBy=session.user
        if(topic.save()){
            flash.message="Saved"

        }
        else{
            flash.error="Error"

        }
        forward(controller:'user', action: 'index')

    }
    def handleObjectNotFoundException(ObjectNotFoundException e) {

        render ("no object found")
    }

}
