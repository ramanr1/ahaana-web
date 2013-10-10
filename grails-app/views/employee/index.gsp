<%--
  Created by IntelliJ IDEA.
  User: Rajesh
  Date: 10/10/13
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <r:require modules="bootstrap"/>
    <title></title>
</head>

<body>
<section>
    <div class="container">
        <div class="row">
            <header class="page-header">
                <h3>Employee <small class="lead">Employee Details</small></h3>
            </header>

            <div class="span3">
                <g:link class="btn btn-block btn-link" action="create">Create new employee</g:link>
                <div class="well">
                    <ul class="nav nav-list">
                        <li class="nav-header">Employee</li>
                        <li class="active">
                            <a id="view-all" href="#">
                                <i class="icon-chevron-right pull-right"></i>
                                <b>View All</b>
                            </a>
                        </li>
                        <g:each in="${employee}" var="employee" status="i">
                            <li>
                                <a href="#Employee-${employee.id}">
                                    <i class="icon-chevron-right pull-right">
                                    </i>
                                    ${"${employee.firstName} ${employee.lastName}"}
                                </a>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </div>

            <div class="btn-group">
                <g:link class="btn btn-primary" action="edit" id="${employee.id}"><i
                        class="icon-edit icon-white"></i>Edit</g:link>
            </div>
        </div>
    </div>
</section>
<g:javascript>
    $('ul.nav > li > a').click(function (e){
        if ($(this).attr('id') == "view-all") {
            $('div[id*=Employee-"]').fadeIn('fast');
        } else {
            var aRef = $(this);
            var tablesToHide = $('div[id*="Employee-"]:visible').length > 1 ? $('div[id*="Employee-"]:visible' : $($('.nav > li[class="active"] > a').attr('href'));
            tablesToHide.hide();
            $(aRef.attr('href').fadeIn('fast'));
        }
        $('.nav > li[class="active"]').removeClass('active');
        $(this).parent().addClass('active');
    });
</g:javascript>
</body>
</html>