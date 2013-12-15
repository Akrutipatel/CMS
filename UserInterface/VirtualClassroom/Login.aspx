﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CMS.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!DOCTYPE html>
<html lang="en">
<head>
    <!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
    <meta charset="utf-8">
    <title>Content Management System Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">
    <!-- The styles -->
    <link id="bs-css" href="../Common/css/bootstrap-cerulean.css" rel="stylesheet" />
    <style type="text/css">
        body
        {
            padding-bottom: 40px;
        }
        .sidebar-nav
        {
            padding: 9px 0;
        }
    </style>
    <link href="../Common/css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="../Common/css/charisma-app.css" rel="stylesheet" />
    <link href="../Common/css/jquery-ui-1.8.21.custom.css" rel="stylesheet" />
    <link href='../Common/css/fullcalendar.css' rel='stylesheet'/>
    <link href='../Common/css/fullcalendar.print.css' rel='stylesheet' media='print'/>
    <link href='../Common/css/chosen.css' rel='stylesheet'/>
    <link href='../Common/css/uniform.default.css' rel='stylesheet'/>
    <link href='../Common/css/colorbox.css' rel='stylesheet'/>
    <link href='../Common/css/jquery.cleditor.css' rel='stylesheet'/>
    <link href='../Common/css/jquery.noty.css' rel='stylesheet'/>
    <link href='../Common/css/noty_theme_default.css' rel='stylesheet'/>
    <link href='../Common/css/elfinder.min.css' rel='stylesheet'/>
    <link href='../Common/css/elfinder.theme.css' rel='stylesheet'/>
    <link href='../Common/css/jquery.iphone.toggle.css' rel='stylesheet'/>
    <link href='../Common/css/opa-icons.css' rel='stylesheet'/>
    <link href='../Common/css/uploadify.css' rel='stylesheet'/>
    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
    <!-- The fav icon -->
    <link rel="shortcut icon" href="../Common/img/favicon.ico"/>
</head>
<body>
    <div class="container-fluid">
        <div class="row-fluid">
            <div class="row-fluid">
                <div class="span12 center login-header">
                    <h2>Content Management System, GECG</h2>
                </div>
                <!--/span-->
            </div>
            <!--/row-->
            <!--/row-->
            <div class="row-fluid">
                <div class="well span5 center login-box">
                    <div class="alert alert-info">
                        Please login with your Username and Password.
                    </div>
                    <form class="form-horizontal" runat="server" action="" method="post">
                    <fieldset>
                        <div class="input-prepend" title="Login-As" data-rel="tooltip">
                            <span class="add-on"><i class="icon-hand-right"></i></span>
                            <asp:DropDownList ID="ddlLogInAs" class="input-large span10" runat="server" onchange="enableText();"
                                Style="width: auto;">
                                <asp:ListItem Value="0">Log-In As</asp:ListItem>
                                <asp:ListItem Value="Student">Student</asp:ListItem>
                                <asp:ListItem Value="Staff">Staff</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="clearfix">
                        </div>
                        <div class="input-prepend" title="Username" data-rel="tooltip">
                            <span class="add-on"><i class="icon-user"></i></span>
                            <asp:TextBox runat="server" autofocus class="input-large span10" name="username"
                                ID="username" type="text" value="n" placeholder="Username"></asp:TextBox></div>
                        <div class="clearfix">
                        </div>
                        <div class="input-prepend" title="Password" data-rel="tooltip">
                            <span class="add-on"><i class="icon-lock"></i></span>
                            <asp:TextBox class="input-large span10" name="password" ID="pwd" type="password"
                                value="n" runat="server" placeholder="Password"></asp:TextBox>
                        </div>
                        <div class="clearfix">
                        </div>
                        <div class="input-prepend">
                            <label class="remember" for="remember">
                                <input type="checkbox" id="remember" style=" margin-top: auto; "/>&nbsp&nbspRemember me</label>
                        </div>
                        <div class="clearfix">
                        </div>
                        <p class="center span5" style=" margin-top: -19px; margin-bottom: 30px; ">
                            <asp:Button ID="Submit" class="btn btn-primary" runat="server" Text="Login" 
                                onclick="Submit_Click" />
                        </p>
                        <div class="alert alert-info">
                        Not registered yet? Register here...
                        </div>
                        <div class="input-prepend" title="Register-As" data-rel="tooltip">
                            <span class="add-on"><i class="icon-briefcase"></i></span>
                            <asp:DropDownList ID="ddlRegisterAs" class="input-large span10" runat="server" onchange="enableText();"
                                Style="width: auto;">
                                <asp:ListItem Value="0">Register As</asp:ListItem>
                                <asp:ListItem Value="1">Student</asp:ListItem>
                                <asp:ListItem Value="2">Staff</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="clearfix">
                        </div>
                    </fieldset>
                    </form>
                </div>
                <!--/span-->
            </div>
            <!--/row-->
        </div>
        <!--/fluid-row-->
    </div>
    <!--/.fluid-container-->
    <!-- external javascript
	================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- jQuery -->
    <script type="text/javascript" src="../Common/js/jquery-1.7.2.min.js"></script>
    <!-- jQuery UI -->
    <script type="text/javascript" src="../Common/js/jquery-ui-1.8.21.custom.min.js"></script>
    <!-- transition / effect library -->
    <script type="text/javascript" src="../Common/js/bootstrap-transition.js"></script>
    <!-- alert enhancer library -->
    <script type="text/javascript" src="../Common/js/bootstrap-alert.js"></script>
    <!-- modal / dialog library -->
    <script type="text/javascript" src="../Common/js/bootstrap-modal.js"></script>
    <!-- custom dropdown library -->
    <script type="text/javascript" src="../Common/js/bootstrap-dropdown.js"></script>
    <!-- scrolspy library -->
    <script type="text/javascript" src="../Common/js/bootstrap-scrollspy.js"></script>
    <!-- library for creating tabs -->
    <script type="text/javascript" src="../Common/js/bootstrap-tab.js"></script>
    <!-- library for advanced tooltip -->
    <script type="text/javascript" src="../Common/js/bootstrap-tooltip.js"></script>
    <!-- popover effect library -->
    <script type="text/javascript" src="../Common/js/bootstrap-popover.js"></script>
    <!-- button enhancer library -->
    <script type="text/javascript" src="../Common/js/bootstrap-button.js"></script>
    <!-- accordion library (optional, not used in demo) -->
    <script type="text/javascript" src="../Common/js/bootstrap-collapse.js"></script>
    <!-- carousel slideshow library (optional, not used in demo) -->
    <script type="text/javascript" src="../Common/js/bootstrap-carousel.js"></script>
    <!-- autocomplete library -->
    <script type="text/javascript" src="../Common/js/bootstrap-typeahead.js"></script>
    <!-- tour library -->
    <script type="text/javascript" src="../Common/js/bootstrap-tour.js"></script>
    <!-- library for cookie management -->
    <!--<script type="text/javascript" src="../Common/js/jquery.cookie.js"></script> <!--(Problematic Javascript for css)-->
    <!-- calander plugin -->
    <script type="text/javascript" src="../Common/js/fullcalendar.min.js"></script>
    <!-- data table plugin -->
    <script type="text/javascript" src="../Common/js/jquery.dataTables.min.js"></script>
    <!-- chart libraries start -->
    <script type="text/javascript" src="../Common/js/excanvas.js"></script>
    <script type="text/javascript" src="../Common/js/jquery.flot.min.js"></script>
    <script type="text/javascript" src="../Common/js/jquery.flot.pie.min.js"></script>
    <script type="text/javascript" src="../Common/js/jquery.flot.stack.js"></script>
    <script type="text/javascript" src="../Common/js/jquery.flot.resize.min.js"></script>
    <!-- chart libraries end -->
    <!-- select or dropdown enhancer -->
    <script type="text/javascript" src="../Common/js/jquery.chosen.min.js"></script>
    <!-- checkbox, radio, and file input styler -->
    <script type="text/javascript" src="../Common/js/jquery.uniform.min.js"></script>
    <!-- plugin for gallery image view -->
    <script type="text/javascript" src="../Common/js/jquery.colorbox.min.js"></script>
    <!-- rich text editor library -->
    <script type="text/javascript" src="../Common/js/jquery.cleditor.min.js"></script>
    <!-- notification plugin -->
    <script type="text/javascript" src="../Common/js/jquery.noty.js"></script>
    <!-- file manager library -->
    <script type="text/javascript" src="../Common/js/jquery.elfinder.min.js"></script>
    <!-- star rating plugin -->
    <script type="text/javascript" src="../Common/js/jquery.raty.min.js"></script>
    <!-- for iOS style toggle switch -->
    <script type="text/javascript" src="../Common/js/jquery.iphone.toggle.js"></script>
    <!-- autogrowing textarea plugin -->
    <script type="text/javascript" src="../Common/js/jquery.autogrow-textarea.js"></script>
    <!-- multiple file upload plugin -->
    <script type="text/javascript" src="../Common/js/jquery.uploadify-3.1.min.js"></script>
    <!-- history.js for cross-browser state change on ajax -->
    <script type="text/javascript" src="../Common/js/jquery.history.js"></script>
    <!-- application script for Charisma demo -->
    <script type="text/javascript" src="../Common/js/charisma.js"></script>
</body>
</html>
