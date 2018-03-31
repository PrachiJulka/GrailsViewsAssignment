<!DOCTYPE html>
<html>
<head>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:stylesheet src="bootstrap.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >

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

   %{-- <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">--}%
   %{--     <g:message code="spinner.alt" default="Loading&hellip;"/>
  --}%  </div>

    %{--<asset:javascript src="application.js"/>--}%
        </div>
    </div>
<g:layoutBody/>
</body>
</html>
