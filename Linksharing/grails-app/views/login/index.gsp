<%--
  Created by IntelliJ IDEA.
  User: prachi
  Date: 28/3/18
  Time: 8:40 PM
--%>
%{--
Login should work from login form on home page and show top posts and recent post on home page--}%
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-lg-6" >
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-sm-12">
                            Recent Shares
                        </div>

                    </div>
                </div>

                <div class="panel-body">

                    <div class="row heading">

                        <g:each in="${com.ttn.linksharing.Resource.recentShares()}"
                                var="recentShares">
                            <div class="row">
                                <div class="row">
                                    <div class=" col-lg-offset-1 col-lg-2">
                                        <img class="img-responsive" alt="dummy" src="index.jpeg" />
                                    </div>
                                    <div class=" col-lg-9">
                                        <div class="row">
                                            <div class="col-sm-7">
                                                <span>${recentShares.user.userName}</span> <small
                                                    class="text-muted">@${recentShares.user.firstName}
                                                5min</small>
                                            </div>
                                            <div class="cil-sm-offset-4 col-sm-1">
                                                <a href="#" class="anchor">${recentShares.topic.name}</a>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-11" style="padding-right: 23px">
                                                ${recentShares.description}</div>
                                        </div>
                                        <div class="row">
                                            <div class="col-sm-6">
                                                <span> <i class="fa fa-facebook-square"
                                                          aria-hidden="true"></i> <i class="fa fa-tumblr"
                                                                                     aria-hidden="true"></i> <i class="fa fa-google-plus"
                                                                                                                aria-hidden="true"></i>
                                                </span>
                                            </div>
                                            <div class="col-sm-offset-2 col-sm-4">
                                                <a href="#">View Post</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </g:each>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-6" >
            <div class="panel panel-default">
                <div class="panel-heading">Login</div>
                <div class="panel-body">

                    <g:form class="form-horizontal" controller="login"
                            action="loginHandler">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="userName">Email:</label>
                            <div class="col-sm-10">
                                <g:textField type="text" class="form-control"
                                             placeholder="Enter email" name="userName" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="password">Password:</label>
                            <div class="col-sm-10">
                                <g:passwordField type="password" class="form-control"
                                                 placeholder="Enter password" name="password" />
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-5">
                                <a href="#forgotPassword" data-toggle="modal"  aria-hidden="true" >forgot Password</a>
                            </div>

                            <div class="col-sm-5">
                                <g:submitButton name="Save" value="Save"
                                                class="btn btn-default">LogIn</g:submitButton>
                            </div>
                        </div>
                    </g:form>
                </div>
            </div>
        </div>

    </div>
</div>




<!-- second row-->
<div class="container">
    <div class="row">
        <div class="col-lg-6" >
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-sm-4">
                            Top posts
                        </div>
                        <div class="col-sm-offset-4 col-sm-4">
                            <button class="btn-xs drop_button dropdown-toggle " data-placement="left" data-toggle="tooltip"  id="menu1">Tutorials
                                <span class="caret" ></span>    </button>
                        </div>
                    </div>
                </div>
                <div class="panel-body">

                    <div class="row heading">
                        <g:each in="${com.ttn.linksharing.Resource.topPost()}" var="post">
                            <div class="row">
                                <div class=" col-lg-offset-1 col-lg-2">
                                    <img class="img-responsive" alt="dummy" src="index.jpeg" />
                                </div>
                                <div class=" col-lg-9">
                                    <div class="row">
                                        <div class="col-sm-7">
                                            <span>${post.user.userName}</span> <small class="text-muted">@uday
                                        5min</small>
                                        </div>
                                        <div class="cil-sm-offset-4 col-sm-1">
                                            <a href="#" class="anchor">${post.topic.name}</a>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-11" style="padding-right: 23px">
                                            ${post.description}</div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6">
                                        <span>
                                            <i class="fa fa-facebook-square" aria-hidden="true"></i> <i class="fa fa-tumblr" aria-hidden="true"></i> <i class="fa fa-google-plus" aria-hidden="true"></i>
                                        </span>
                                    </div>
                                    <div class="col-sm-offset-2 col-sm-4">
                                        <a href="#">View Post</a>
                                    </div>
                                </div>
                            </div>
                        </g:each>
                        </div>
                    </div>
                </div>
            </div>


        <div class="col-lg-6" >
            <div class="panel panel-default">
                <div class="panel-heading">Register</div>
                <div class="panel-body">

                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="firstName"> First Name*</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="firstName" placeholder="Enter FirstName">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="lastName">Last Name*:</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="lastName" placeholder="Enter Last Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="email">Email*:</label>
                            <div class="col-sm-8">
                                <input type="email" class="form-control" id="email1" placeholder="Enter Email">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4" for="userName">Username*:</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control" id="userName" placeholder="Enter Username">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label col-sm-4" for="password">Password*:</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="password1" placeholder="Enter Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="cnfrmPassword"> Confirm Password*:</label>
                            <div class="col-sm-8">
                                <input type="password" class="form-control" id="cnfrmPassword" placeholder="Enter Confirm Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-4" for="photo">Photo:</label>
                            <div class="col-sm-8">
                                <input type="file" name="Browse"/><br/><br/>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-sm-offset-7 col-sm-4">
                                <button type="submit" class="btn btn-default">Register</button>
                            </div>
                        </div>
                    </form>


                </div>
            </div>
        </div>
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

                            <input class="form-control" type="email" placeholder="Email" id="emailId" />    </div>

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



<!-- forgotPassword -->
<div id="forgotPassword" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">x</button>
                <h4 class="modal-title">Forgot Password(Pop up)</h4>
            </div>

            <div class="modal-body">
                <form class="form-horizontal">

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Password</label>
                        <div class="col-sm-10">

                            <input class="form-control" type="password" placeholder="Name" id="password2" name="password" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">Confirm Password</label>
                        <div class="col-sm-10">

                            <input class="form-control" type="password" placeholder="Name" id="confirmPassword" name="confirmPassword" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">


                            <input type="button" id="change" value="Change" class="btn btn-primary"/>
                            <input type="button" value="Cancel" data-dismiss="modal" class="btn btn-primary"/>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



</body>
</html>