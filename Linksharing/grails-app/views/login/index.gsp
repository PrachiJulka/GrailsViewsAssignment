<%--
  Created by IntelliJ IDEA.
  User: prachi
  Date: 28/3/18
  Time: 8:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<body>
hello
%{--<g:if test="${flash.error}">--}%
${keyFail}
<g:message message="${flash.error}"></g:message>
<g:message message="${flash.message}"></g:message>
%{--</g:if>--}%
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

                        <div class="row">
                            <div class=" col-lg-offset-1 col-lg-2">
                                <img class="img-responsive" alt="dummy" src="index.jpeg"/>
                            </div>
                            <div class=" col-lg-9">
                                <div class="row">
                                    <div class="col-sm-7">
                                        <span>Uday Pratap Singh</span> <small class="text-muted">@uday 5min</small>
                                    </div>
                                    <div class="cil-sm-offset-4 col-sm-1">
                                        <a href="#" class="anchor">Grails</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-11" style="padding-right: 23px">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.
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
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-6" >
            <div class="panel panel-default">
                <div class="panel-heading">Login</div>
                <div class="panel-body">

                    <form class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="email">Email:</label>
                            <div class="col-sm-10">
                                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="pwd">Password:</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-5">
                                <a href="" >forgot Password</a>
                            </div>

                            <div class="col-sm-5">
                                <button type="submit" class="btn btn-default">LogIn</button>
                            </div>
                        </div>
                    </form>
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

                        <div class="row">
                            <div class="col-lg-offset-1 col-lg-2">
                                <img class="img-responsive" alt="dummy" src="index.jpeg"/>
                            </div>
                            <div class="  col-lg-9">
                                <div class="row">
                                    <div class="col-sm-7">
                                        <span>Uday Pratap Singh</span> <small class="text-muted">@uday 5min</small>
                                    </div>
                                    <div class="cil-sm-offset-4 col-sm-1">
                                        <a href="#" class="anchor">Grails</a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-11" style="padding-right: 23px">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.
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
                        </div>
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
                                <input type="email" class="form-control" id="email" placeholder="Enter Email">
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
                                <input type="password" class="form-control" id="password" placeholder="Enter Password">
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


</body>
</html>