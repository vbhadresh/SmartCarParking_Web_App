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
        <form id="login" action="<%=request.getContextPath() %>/Registration" method="post">
        
        
        <input type="hidden" name="mode" value="1">
                   	
            <div class="inputwrapper login-alert">
                <div class="alert alert-error">Invalid username or password</div>
            </div>
            
         
            <h3> Sign up </h3>
            
            <div class="inputwrapper animate1 bounceIn">
                <input type="text" name="firstName" id="firstname" placeholder="First NAME" />
            </div>
            
            
             
            <div class="inputwrapper animate1 bounceIn">
                <input type="text" name="lastName" id="lastName" placeholder="last NAME" />
            </div>
            
            
             
            <div class="inputwrapper animate1 bounceIn">
                <input type="text" name="email" id="email" placeholder="email" />
            </div>
            
             
            <div class="inputwrapper animate1 bounceIn">
                <input type="text" name="mobileNumber" id="mobileNumber" placeholder="mobileNumber" />
            </div>
            
              
            <div class="inputwrapper animate1 bounceIn">
                <input type="text" name="userName" id="userName" placeholder="userName" />
            </div>
            
            
            <div class="inputwrapper animate2 bounceIn">
                <input type="password" name="password" id="password" placeholder="PASSWORD" />
            </div>
            
            
              <iframe src="<%=request.getContextPath() %>/backEnd/fileupload/fileUpload.jsp" width="100%" height="230"></iframe>
              
              
              
            <div class="inputwrapper animate3 bounceIn">
                <button name="submit">Sign up</button>
            </div>
            <div class="inputwrapper animate4 bounceIn">
               
                <label><input type="checkbox" class="remember" name="signin" /> Keep me sign in</label>
            </div>
            
        </form>
    </div><!--loginpanelinner-->
</div><!--loginpanel-->

<div class="loginfooter">
    <p>   <span>&copy; 2015 S.P.M.S. All Rights Reserved.</span></p>
</div>

</body>


</html>
