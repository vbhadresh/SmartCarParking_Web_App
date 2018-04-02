<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin | S.P.M.S.</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/bootstrap-fileupload.min.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/bootstrap-timepicker.min.css" type="text/css" />
<script type="text/javascript" 	src="${pageContext.request.contextPath}/backEnd/js/jquery-1.11.0.min.js"></script>

<% 
   String userType = (String) session.getAttribute("userType");


if(userType==null || !userType.equals("ADMIN")){
	session.removeAttribute("userID");
	response.sendRedirect(request.getContextPath()+"/views/login.jsp");
}  %>

<link rel="shortcut icon" href="${pageContext.request.contextPath}/backEnd/images/main/favicon.ico" type="image/x-icon" />

</head>

<body>

<div id="mainwrapper" class="mainwrapper">
    
    <div class="header">
        <div class="logo">
            <a href="#"><img src="${pageContext.request.contextPath}/backEnd/images/logo.png" alt="" /></a>
        </div>
        <div class="headerinner">
            <ul class="headmenu">
                <li class="odd">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="count"></span>
                        <span class="head-icon head-message"></span>
                        <span class="headmenu-label" >Feedback</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="nav-header">Feedback</li>
                        <li><a href="${pageContext.request.contextPath}/FeedBack?mode=manage"><span class="icon-envelope"></span> View Feedback</a></li>
                       </ul>
                </li>
                 
                <li>
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#">
                    <span class="count"></span>
                    <span class="head-icon head-users"></span>
                    <span class="headmenu-label">Manage Admin/Employee</span>
                    </a>
                    <ul class="dropdown-menu newusers">
                        <li class="nav-header">Admin/Employees</li>
                        <li>
                            <a href="${pageContext.request.contextPath}/UserController?mode=7">
                                <img src="${pageContext.request.contextPath}/backEnd/images/photos/nothumb.png" alt="" class="userthumb" />
                                <strong>Admin</strong>
                                <small>View All</small>
                            </a>
                        </li>
                        <li>
                            <a href="${pageContext.request.contextPath}/UserController?mode=8">
                                <img src="${pageContext.request.contextPath}/backEnd/images/photos/nothumb.png" alt="" class="userthumb" />
                                <strong>Employees</strong>
                                <small>View All</small>
                            </a>
                        </li>
                      
                       
                    </ul>
                </li>
               
               
            <%--     <li class="odd">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <span class="count"></span>
                        <span class="head-icon head-bar"></span>
                        <span class="headmenu-label">Press Releases</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="nav-header">View Press Releases </li>
                        <li><a href="${pageContext.request.contextPath}/PressReleaseController?mode=5">Press Releases <small class="muted">View all Press Releases </small></a></li>
                       </ul>
                </li> --%>
                <li class="right">
                    <div class="userloggedinfo">
                   <%  if(session.getAttribute("path")!=null){  %>
                        <img src="${pageContext.request.contextPath}/attachments/<%=session.getAttribute("path") %>" style="height:86px;width:86px;" alt="" />
                        <%  }else{  %>
                        <img src="${pageContext.request.contextPath}/backEnd/images/photos/nothumb.png" style="height:86px;width:86px;" alt="" />
                        <%  }  %>
                        <div class="userinfo">
                            <h5><%=session.getAttribute("name") %><small>-  <%=session.getAttribute("email") %></small></h5>
                            <ul>
                               
                             <li><a href="<%=request.getContextPath() %>/SessionManagement?token=adminEditProfile" >Edit my Profile</a></li>
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
                 <li><a href="<%=request.getContextPath() %>/views/admin/home.jsp"><span class="iconsweets-home"></span>Home</a></li>
                 

                 
                 <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> Parking </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/ParkingController?=mode=1"> Add Parking</a></li>
                     <li><a href="${pageContext.request.contextPath}/ParkingController?mode=5"> Manage Parking</a></li>
                </ul> 
                 </li>
                  
               
               <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> User </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/UserController?mode=1"> Add User</a></li>
                     <li><a href="${pageContext.request.contextPath}/UserController?mode=5"> Manage User</a></li>
                </ul> 
                </li>
                  
                <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> User Log </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/UserLogController"> View User Logs</a></li>
                     
                </ul> 
                </li>
                
                <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> Transaction Log </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/TransactionLogController"> View Transaction Log</a></li>
                     
                </ul> 
                </li>  
                
                <li class="dropdown" ><a href="#"><span class="iconsweets-notebook"></span> Payment Log </a>
                <ul>
                     <li><a href="${pageContext.request.contextPath}/PaymentLogController"> View Payment Log</a></li>
                     
                </ul> 
                </li> 
               
            </ul>
        </div><!--leftmenu-->
        
    </div><!-- leftpanel -->
    
  