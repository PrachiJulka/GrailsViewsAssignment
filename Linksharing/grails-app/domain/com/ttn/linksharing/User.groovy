package com.ttn.linksharing

import com.ttn.linksharing.co.SearchCO

//
/*
_create.gsp transient method in user domain getSubscribedTopic to
get only subscribed topics of user, this method will be used in user
dashboard and dropdown of linkresource create and email invite of topic*/

class User {

    String email
    String userName
    String password
    String firstName
    String lastName
    byte photo
    boolean admin
    boolean active
    Date dateCreated
    Date lastUpdated

    String confirmPassword
   // String name
    //List<Topic> topics
    static hasMany = [topics:Topic,subscriptions:Subscription,resources:Resource,resourceRating:ResourceRating,readingItems:ReadingItem]/*,subscriptions:Subscription,resources:Resource*/
    static mapping = {
        sort("id":"desc")
        subscriptions lazy: false
    }


    List getSubscribedTopic() {
           this.subscriptions.toList()

    }
    static transients = ['confirmPassword','subscribedTopic']

    static constraints = {
        email(unique: true,email: true,blank: false,nullable: false)
        userName(unique: true,blank: false,nullable: false)
        password(blank: false,nullable: false,minSize: 5, validator: {password, obj ->
              def password2 = obj.confirmPassword
                        password == password2 ? true : ['invalid.matchingpasswords']
        })
        firstName(blank: false,nullable: false)
        lastName(blank: false,nullable: false)
        photo(nullable:true,sqlType:'longBlob')
        admin(nullable:true)
        confirmPassword(nullable: true,blank: true)
    }

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userName + '\'' +
                '}';
    }
/*
    Add Inbox feature on user/index when user is loggedin

    - _create.gsp method getUnReadResources in user domain
    which takes SearchCO argument and returns unreaditems of user from ReadingItem domain
    - The search should also work using user/index page,
    q parameter of SearchCO. If searchco.q is found then getUnReadResources
    method will search the items based on ilike of resource.description.
    - The pagination parameter should also be used in getUnReadResources
     criteria query.
      _create.gsp readingItem/changeIsRead action which takes Long id
     and Boolean isRead
    - User executeUpdate to change the isRead of readingItem with given id
    - If value returned by executeUpdate is 0 then render error else render success

*/


    List getUnreadResource(SearchCO searchCO){

            if(searchCO.q){
                List<ReadingItem> unReadItems= ReadingItem.createCriteria().list(max:10,offset:0){
                    ilike('resource.description',this.resources.description)
                    eq('isRead',false)
                }
                return  unReadItems
            }
    }
}
