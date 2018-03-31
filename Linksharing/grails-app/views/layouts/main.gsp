<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">


    %{-- <asset:stylesheet src="fontawesome-free-5.0.9"/>--}%

    <!-- Latest compiled and minified JavaScript -->
    <g:layoutHead/>
</head>
<body>
<div class="container">
    <div class="page-header">
        <div class="row">
            <div class="col-sm-2">
                <a class="head-icon" style="float: left; margin-top: 13px;">LINK
                SHARING</a>
            </div>
            <div class="col-sm-offset-1 col-sm-3 search">
                <i class="fa fa-search" aria-hidden="true"></i>
                <input type="text" class="search_border " placeholder="search" />
                <span class="glyphicon glyphicon-remove-sign  cross"></span>
            </div>

            <g:if test="${flash.error}">
                <g:message message="${flash.error}"></g:message>

                  </g:if>
            <g:if test="${flash.message}">
                <g:message message="${flash.message}"></g:message>

            </g:if>
        <g:if test="${session.user!=null}">
            <div class="col-sm-1">
                <i class="fa fa-comment head-icon" aria-hidden="true"
                   style="font-size: 26px;" data-toggle="modal" data-target="#CreateTopic"></i>
            </div>
            <div class="col-sm-1">
                <i class="fa fa-envelope-o head-icon" aria-hidden="true"
                   style="font-size: 26px;" data-toggle="modal" data-target="#SendInvite"></i>
            </div>
            <div class="col-sm-1">
                <i class="fa fa-link head-icon" aria-hidden="true"
                   style="font-size: 26px;" data-toggle="modal" data-target="#shareLink"></i>
            </div>
            <div class="col-sm-1">
                <i class="fa fa-file-o head-icon" aria-hidden="true"
                   style="font-size: 26px;" data-toggle="modal" data-target="#shareDocument"></i>
            </div>

            <div class="col-lg-1">
                <div class="col-lg-1">
                    <i class="fa fa-user head-icon" style="font-size: 26px;"
                       aria-hidden="true"></i>
                </div>
                <div class="col-lg-2">
                    <button class="btn-xs drop_button dropdown-toggle head-btn"
                            data-placement="left" data-toggle="dropdown">
                        <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu user-ul">
                        <li><a href="#">Profile</a></li>
                        <li><a href="#">Users</a></li>
                        <li><a href="#">Topic</a></li>
                        <li><a href="#">Post</a></li>
                        <li><a href="#">Logout</a></li>
                    </ul>
                </div>

            </div>

        </g:if>
        </div>
        <g:layoutBody/>
        %{--<asset:javascript src="application.js"/>--}%
    </div>
</div>

    <!--Share Link-->
<!--Share Link Modal-->
            <div id="shareLink" class="modal fade" role="dialog">
                <div class="container">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Share Link (Pop up)</h4>
                            </div>

                            <div class="modal-body">
                                <form class="form-horizontal" >
                                    <div class="form-group">
                                        <div class="col-sm-2">
                                            <label class="control-label col-sm-2">Link</label>
                                        </div>
                                        <div class="col-sm-10">
                                            <input class="form-control" type="text" placeholder="Link" id="link" />
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-2 font-normal" for="email" style="text-align: left" >Description*</label>
                                        <div class="col-sm-10">

                                            <textarea  class="form-control" rows="4" placeholder="Description" id="descriptionLink"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label col-sm-2">Link</label>
                                        <div class="col-sm-4">
                                            <select class="form-control" name="topic" id="topicLink">
                                            </select>

                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-offset-2 col-sm-10">
                                            <input type="button"  class="btn btn-primary" id="shareLinkBtn" value="Submit" />
                                            <input type="button" class="btn btn-primary" id="cancelLinkBtn" value="Close" data-dismiss="modal"/>
                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Share Document Modal-->
            <div id="shareDocument" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Share Document (Pop up)</h4>
                        </div>

                        <div class="modal-body">
                            <form class="form-horizontal" >
                                <div class="form-group">
                                    <label class="control-label col-sm-2">Document</label>
                                    <div class="col-sm-10">

                                        <input class="form-control" type="file" name="document" id="document"/>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="control-label col-sm-2 font-normal" for="email" style="text-align: left">Description*</label>
                                    <div class="col-sm-10">

                                        <textarea  class="form-control" rows="4" placeholder="Description" id="description"></textarea>
                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-2">Topic*</label>


                                    <div class="col-sm-10">

                                        <select name='topic' id="topicDocument">

                                        </select>

                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">

                                        <input type="button" name="Share" value="Share" id="shareDocumentBtn" class="btn btn-primary"/>

                                        <input type="button" name="Cancel" id="cancel1" value="Cancel" data-dismiss="modal" class="btn btn-primary"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!--
                    Send Invitation Modal
             -->
            <div id="SendInvite" class="modal fade" role="dialog">
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
                                    <label class="control-label col-sm-2">Link</label>
                                    <div class="col-sm-4">
                                        <select class="form-control" name="topic" >
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
            </div>
            </div>


            <!-- Create Topic Modal -->
            <div id="CreateTopic" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">x</button>
                            <h4 class="modal-title">Create Topic(Pop up)</h4>
                        </div>

                        <div class="modal-body">
                            <form class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Name</label>
                                    <div class="col-sm-10">

                                        <input class="form-control" type="text" placeholder="Name" id="name" name="name" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Visibility</label>
                                    <div class="col-sm-10">

                                        <select name="visibility" id="visibility">
                                            <option value="PUBLIC">Public</option>
                                            <option value="PRIVATE">Private</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">


                                        <input type="button"  id="insert" value="Add" class="btn btn-primary"/>
                                        <input type="button"   value="Cancel" data-dismiss="modal" class="btn btn-primary"/>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>



</body>
<link
        href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
        rel="stylesheet">

<link rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />



<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</html>
