package com.ttn.linksharing

import com.ttn.linksharing.co.ResourceSearchCO
import com.ttn.linksharing.enums.Visibility
import org.hibernate.ObjectNotFoundException

/*
-Call this method from resource show action
*/
class ResourceController {

    def index() { }


    def delete(Integer id){

        Resource resource=Resource.load(id)
        println resource
    }
    def handleObjectNotFoundException(ObjectNotFoundException e) {

        render ("no object found")
    }
    def search(){
     search
    }
    def show(Integer id){
        Resource resource=Resource.get(id)
        /*SearchCO searchCO=new SearchCO(q:"dcdcsd")
        RatingInfoVO ratingInfoVO= resource.getRatingInfoVo(resource)
        println ("------------ ${resource.topPost()}")
        println ("vmdfkvmdkfvmdkm ${session.user.getUnreadResource(searchCO)}")
        render(ratingInfoVO.averagescore)
        */
        Topic.getTrendingTopics()
       // println Topic.getTrendingTopics()
        }


    def handleNullPointerException(NullPointerException e) {

        render ("null found")
    }
}
