<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<% 

 if(session.getAttribute("userID") != null ){
	
	if( session.getAttribute("userType") == "ADMIN" ){
		response.sendRedirect(request.getContextPath()+"/views/admin/home.jsp");
	}else if( session.getAttribute("userType") == "EMPLOYEE" ){
		response.sendRedirect(request.getContextPath()+"/views/employee/home.jsp");
	}else if( session.getAttribute("userType") == "REGISTERED_USER" ){
		response.sendRedirect(request.getContextPath()+"/views/user/home.jsp");
	}
	
} 

%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>S.P.M.S. | ADMINPANEL </title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/style.shinyblue.html" type="text/css" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}//backEnd/images/main/favicon.ico" type="image/x-icon" />


<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery-migrate-1.1.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery-ui-1.10.3.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/modernizr.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/custom.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#login').submit(function(){
            var u = jQuery('#username').val();
            var p = jQuery('#password').val();
            if(u == '' && p == '') {
                jQuery('.login-alert').fadeIn();
                return false;
            }
        });
    });
</script>
</head>

<body class="loginpage">

<div class="loginpanel">
    <div class="loginpanelinner">
        <div class="logo animate0 bounceIn"><img src="${pageContext.request.contextPath}/backEnd/images/logo.png" alt="" /></div>
        <form id="login" action="<%=request.getContextPath() %>/" method="post">
            <div class="inputwrapper login-alert">
                <div class="alert alert-error">Invalid username or password</div>
            </div>
            
            <input type="hidden" name="login" value="true" />
            
            
            <div class="inputwrapper animate1 bounceIn">
                <input type="text" name="userName" id="username" placeholder="USER NAME" />
            </div>
            <div class="inputwrapper animate2 bounceIn">
                <input type="password" name="password" id="password" placeholder="PASSWORD" />
            </div>
            <div class="inputwrapper animate3 bounceIn">
                <button name="submit">Sign In</button>
            </div>
            <div class="inputwrapper animate4 bounceIn">
               <br>
         
               <a class="btn btn-success" href="${pageContext.request.contextPath}/Registration">New ? To Sign up here </a>
            </div>
            
        </form>
    </div><!--loginpanelinner-->
</div><!--loginpanel-->

<div class="loginfooter">
    <p>   <span>&copy; 2015 S.P.M.S. All Rights Reserved.</span></p>
</div>

</body>


</html>
