package com.ttn.linksharing

class LinkResourceController {

    def index() { }

    def save(LinkResource linkResource){
        Resource resource=linkResource
        resource.user=session.user
        if (resource.save())
            flash.message="SAVED"
        else
            flash.message="ERROR"

        forward(controller:'user', action: 'index')
    }
}
