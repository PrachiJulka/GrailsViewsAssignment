<div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4 class="modal-title">Send Invitation (Pop up)</h4>
        </div>

        <div class="modal-body">
            <form class="form-horizontal" >
                <div class="form-group">
                    <label class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-10">

                        <input class="form-control" type="email" placeholder="Email" id="email" />    </div>

                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2">Topics</label>
                    <div class="col-sm-4">
                        <select name='topic' id="inviteEmails">

                            <g:each in="${session.user?.subscribedTopic}" var="subscribedTopics">

                                <option value="${subscribedTopics?.topics?.name}">${subscribedTopics?.topics?.name}</option>
                            </g:each>
                        </select>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">

                        <input type="button" value="Send Invite" name="Send Invite" id="invite" class="btn btn-primary"/>
                        <input type="button" name="Cancel" value="Cancel" id="cancel" data-dismiss="modal" class="btn btn-primary"/>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>