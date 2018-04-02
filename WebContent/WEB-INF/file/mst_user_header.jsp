<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>



<head>

<style type="text/css">
@media screen and (max-width: 320px)
.header .logo {
  width: 58px!IMPORTANT;
}

@media screen and (max-width: 320px)
.header .logo {
  width: 58px!IMPORTANT;
}

</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>User | S.P.M.S.</title>

<link rel="stylesheet" href="<%=request.getContextPath() %>/backEnd/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/bootstrap-fileupload.min.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/bootstrap-timepicker.min.css" type="text/css" />


<link rel="shortcut icon" href="${pageContext.request.contextPath}//backEnd/images/main/favicon.ico" type="image/x-icon" />
<script type="text/javascript" 	src="${pageContext.request.contextPath}/backEnd/js/jquery-1.11.0.min.js"></script>
<% 
   String userType = (String) session.getAttribute("userType");


if(userType==null || !userType.equals("REGISTERED_USER")){
	session.removeAttribute("userID");
	response.sendRedirect(request.getContextPath()+"/views/login.jsp");
}  %>


</head>

<body>

<div id="mainwrapper" class="mainwrapper">
    
    <div class="header">
        <div class="logo">
            <a href="#"><img src="${pageContext.request.contextPath}/backEnd/images/logo.png" alt="" /></a>
        </div>
        <div class="headerinner">
            <ul class="headmenu">
               
                <li class="right">
                    <div class="userloggedinfo">
                         <%  if(session.getAttribute("path")!=null){  %>
                        <img src="${pageContext.request.contextPath}/attachments/<%=session.getAttribute("path") %>" style="height:86px;width:86px;" alt="" />
                        <%  }else{  %>
                        <img src="${pageContext.request.contextPath}/backEnd/images/photos/nothumb.png" style="height:86px;width:86px;" alt="" />
                        <%  }  %>
                        <div class="userinfo">
                            <h5> <%=session.getAttribute("name") %><small>- <%=session.getAttribute("email") %></small></h5>
                            <ul>
                               
                               
                                <li><a href="<%=request.getContextPath() %>/SessionManagement?token=signout">Sign Out</a></li>
                            </ul>
                        </div>
                    </div>
                </li>
            </ul><!--headmenu-->
        </div>
    </div>
    
    <div class="leftpanel">
        
        <div class="leftmenu">        
            <ul class="nav nav-tabs nav-stacked">
            	<li class="nav-header">Navigation</li>
                 <li><a href="<%=request.getContextPath() %>/views/user/home.jsp"><span class="iconsweets-home"></span>Home</a></li>
                 
                   
                   
                   <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> Parking Location</a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/ParkingLocationController"> Find Location </a></li>
                   
                </ul> 
                 </li>
                 
                 <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> Pre-Booking </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/RU_PreBookingController?mode=1"> Register Pre-Booking</a></li>
                  
                </ul> 
                 </li>
                  
               
               <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> Booking Details </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/PreviousBookingController"> My Previous Bookings </a></li>
                   
                </ul> 
                 </li>
                  
                
      			<li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> Account Details  </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/RU_UserController?mode=2"> Edit My Information </a></li>
                     <li><a href="${pageContext.request.contextPath}/RU_UserController?=mode=1"> Refer or Register Friend </a></li>
                     
                </ul> 
                 </li>
                  
                 
                 <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> Vehicle </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/RU_VehicleController?mode=1"> Add Vehicle</a></li>
                     <li><a href="${pageContext.request.contextPath}/RU_VehicleController?mode=5"> Manage Vehicle</a></li>
                </ul> 
                 </li>
                  
                 
      
               
            </ul>
        </div><!--leftmenu-->
        
    </div><!-- leftpanel -->
   