<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

	<meta charset="UTF-8">
	<title>L.S.C.D -LET'S SOLVE CRIME DEPARTMENT </title>
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<link href='http://fonts.googleapis.com/css?family=Signika:600,400,300' rel='stylesheet' type='text/css'>
	<link href="http://fonts.googleapis.com/css?family=Dosis:400,500,700" rel="stylesheet" type="text/css">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}//backEnd/images/main/favicon.ico" type="image/x-icon" />
	 <link rel="stylesheet" href="<%=request.getContextPath() %>/frontEnd/css/button.css">
	<link href="<%=request.getContextPath() %>/frontEnd/css/style.css" rel="stylesheet" type="text/css" media="screen">
	<link href="<%=request.getContextPath() %>/frontEnd/css/style-headers.css" rel="stylesheet" type="text/css" media="screen">
    <link href="<%=request.getContextPath() %>/frontEnd/css/style-colors.css" rel="stylesheet" type="text/css" media="screen">
	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.accordion.css" rel="stylesheet">    
    <link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.all.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.base.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.button.css" rel="stylesheet">
 	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.core.css" rel="stylesheet">
 	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.datepicker.css" rel="stylesheet">
 	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.dialog.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.menu.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.progressbar.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.resizable.css" rel="stylesheet">
 	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.selectable.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.slider.css" rel="stylesheet">
 	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.spinner.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.css" rel="stylesheet">
    
	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.tabs.css" rel="stylesheet">
	<link href="<%=request.getContextPath() %>/frontEnd/css/redmond/jquery.ui.theme.css" rel="stylesheet">
	<script type="text/javascript" src="<%=request.getContextPath() %>/frontEnd/js/jquery-1.11.0.min.js"></script>
	<!--[if lt IE 9]>
		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<link href="style-ie.css" rel="stylesheet" type="text/css" media="screen">
	<![endif]-->
</head>

<body class="home boxed shadow p08 color-blue"><div class="root">
	<header class="h10 sticky-enabled no-topbar">
	
		<section class="top">
			<div>
				<p>Call us: 1-123-123-1234 | E-mail: info@lscd.com</p>
				<nav>
					<ul>
					<li class="current-menu-item"><a href="<%=request.getContextPath() %>/views/user/guest/home.jsp">Home</a></li>					
				<li><a href="#">About Us</a>
					<ul>		
						<li><a href="<%=request.getContextPath() %>/views/user/guest/achievements.jsp">Achievements</a></li>
						<li><a href="<%=request.getContextPath() %>/views/user/guest/photogallery.jsp">Photo Gallery</a></li>
						
					</ul>
				</li>
				<li><a href="<%=request.getContextPath() %>/Circulars">Circulars</a></li>
				<li><a href="<%=request.getContextPath() %>/Notifications">Notifications</a></li>
				<li><a href="<%=request.getContextPath() %>/views/user/guest/services.jsp">Services</a></li>
					
				
				<li><a href="<%=request.getContextPath() %>/Home?mode=showFAQs">FAQs</a></li>
				<li><a href="<%=request.getContextPath() %>/FeedBack">Contact Us</a></li>
			</ul>
					<select id="top-nav" name="sec-nav">
					
					
				
				<option value="<%=request.getContextPath() %>/views/user/guest/home.jsp">Home</option>
				
				<option>About Us</option>
				
				<option value="<%=request.getContextPath() %>/views/user/guest/achievements.jsp">- Achievements</option>
				
				<option value="<%=request.getContextPath() %>/views/user/guest/photogallery.jsp">- Photo Gallery</option>
				
				<option value="<%=request.getContextPath() %>/Circulars">Circulars</option>
				
				<option value="<%=request.getContextPath() %>/Notifications" >Notification</option>
				
				<option value="<%=request.getContextPath() %>/views/user/guest/RTI/RTI.jsp">RTI</option>
				
				<option value="<%=request.getContextPath() %>/FeedBack" >Contact Us/Feedback</option>
				
				<option value="<%=request.getContextPath() %>/Home?mode=showFAQs" >FAQs/option>
					
				
			   	
					
			</select>
				</nav>
			</div>
		</section>
		
		
		<section class="main-header"  >
		
		<!---style="background-color:black;height:10px;width:100%;"-->
			<div >
	
				<p class="title"><a href="#">
				
				
				<img src="/lscd/frontEnd/images/bg/bg19.jpg" alt="Let's Solve Crime Department" style="margin-left: -147px;margin-top:-8px;margin-bottom:-3px;margin-right:1px;width: 1234px;height:219px"></a> </p>
				
			
			</div>
			
			
		</section>
		<nav class="mainmenu">
			<ul>
				<li class="current-menu-item"><a href="<%=request.getContextPath() %>/views/user/guest/home.jsp">Home</a></li>					
				<li><a href="#">About Us</a>
					<ul>		
						<li><a href="<%=request.getContextPath() %>/views/user/guest/achievements.jsp">Achievements</a></li>
						<li><a href="<%=request.getContextPath() %>/views/user/guest/photogallery.jsp">Photo Gallery</a></li>
						<li><a href="<%=request.getContextPath() %>/Home?mode=showPressReleases" >Press Releases</a></li>
					</ul>
				</li>
				<li><a href="<%=request.getContextPath() %>/Circulars">Circulars</a></li>
				<li><a href="<%=request.getContextPath() %>/Notifications">Notifications</a></li>
				<li><a href="<%=request.getContextPath() %>/views/user/guest/services.jsp">Services</a></li>
			
				  <li><a href="<%=request.getContextPath() %>/Home?mode=findPoliceStation">Find Police Station</a></li>
				
				
					
				<li><a href="<%=request.getContextPath() %>/views/user/guest/RTI/RTI.jsp">RTI</a></li>
				
				
				<li><a href="<%=request.getContextPath() %>/Home?mode=showFAQs">FAQs</a></li>
				
				<li><a href="<%=request.getContextPath() %>/FeedBack">Contact Us / Feedback</a></li>	
				
				
			</ul>
			<div class="clear"></div>
			<select id="sec-nav" name="sec-nav">
				<option value="<%=request.getContextPath() %>/views/user/guest/home.jsp">Home</option>
				
				
				<option>About Us</option>
				<option value="<%=request.getContextPath() %>/views/user/guest/achievements.jsp">- Achievements</option>
				<option value="<%=request.getContextPath() %>/views/user/guest/photogallery.jsp">- Photo Gallery</option>
				
				<option value="<%=request.getContextPath() %>/Circulars">Circulars</option>
				
				<option value="<%=request.getContextPath() %>/Notifications" >Notification</option>
				
				<option value="<%=request.getContextPath() %>/views/user/guest/services.jsp" >Services</option>
			
				<option value="<%=request.getContextPath() %>/views/user/guest/RTI/RTI.jsp">RTI</option>
				
				
				
				
				<option value="<%=request.getContextPath() %>/Home?mode=showFAQs" >FAQs/option>
				<option value="<%=request.getContextPath() %>/FeedBack" >Contact Us / Feedback</option>
				
						
			   
			   
				
			</select>				
		</nav>
		
	</header>
	
	
	<style>
body.boxed .root {
max-width: 1234px!IMPORTANT;}

nav.mainmenu>ul {
width: 100%;
max-width: 940px;
max-width: 1233px!IMPORTANT;
margin: 0 2px;
}

header>section.top>div {
max-width: 1090px!IMPORTANT;
margin: 0 auto;
}

.breadcrumb p {
max-width: 1090px!IMPORTANT;
margin: 0 10px!IMPORTANT;
}


</style>

<script type="text/javascript">
 $(document).ready(function() {
    	
	 $('#loader').hide(); // hide the gif image when ajax completes
     
	  var $mode0 = "pressReleases";
		 
      $.get('<%=request.getContextPath()%>/Home',{mode:$mode0},function(responseJson) {   
      	   
     	 
     	 
     	 var $basePath = "<%=request.getContextPath() %>/attachments/";   
     	 
     	 
           
             $.each(responseJson, function(key, value) {      
          	   
          	   $("#pressReleases").find('marquee').remove();
          	   
          	   $("#pressReleases").append("<marquee  style='margin-top: -5px!IMPORTANT;float: left; margin-left: 20px;margin-top: -7px;width: 83%;' align='middle' behavior='scroll' direction='left' scrollamount='2' onmouseover='this.setAttribute(\"scrollamount\", 0, 0);' onmouseout='this.setAttribute(\"scrollamount\", 2, 0);'> <ul class='pressContent' >");
          	          
          	      				
          	                    
					var i =1;
					   $.each(value, function(key, value) {
		 							
						  
						    $(".pressContent").append("	<li style='margin-top: 1px;text-decoration: underline;float:left;font-family: Signika, sans-serif;font-size: 16px;font-style: normal; font-variant: normal;font-weight: 300;'+value.regDate+> 	<a href='<%=request.getContextPath() %>/Home?mode=showPressReleases' > "+value.title+"</a></li>");
		 						
						    i++;
						    
					   });
                  
					   $("#pressReleases").append("</ul> </marquee>");
             });
             
             
      });
             
        

	  var $mode1 = "updates";
		 
      $.get('<%=request.getContextPath()%>/Home',{mode:$mode1},function(responseJson) {   
      	   
     	 
     	 
     	 var $basePath = "<%=request.getContextPath() %>/attachments/";   
     	 
     	 
           
             $.each(responseJson, function(key, value) {      
          	   
          	   $("#updates").find('p').remove();
          	   
          	                 
					var i =1;
					   $.each(value, function(key, value) {
		 							
						  
						    $("#updates").append("	<p style ='clear:left;float: left;' >"+value.regDate+" | "+value.title+" </p>");
		 						
						    i++;
						    
					   });
                  
             
             });
             
             
      });
      
      
      
      var $mod = "showMissingPerson";
		 
      $.get('<%=request.getContextPath()%>/Home',{mode:$mod},function(responseJson) {   
      	   
     	 
     	 
     	 var $basePath = "<%=request.getContextPath() %>/attachments/";   
     	 
     	 
           
             $.each(responseJson, function(key, value) {      
          	   
          	   $("#missingPersons").find('div').remove();
          	   
          	                 
					var i =1;
					   $.each(value, function(key, value) {
		 							
						  
						    $("#missingPersons").append("<div><div class='img'><a href='#'><img style='width:120px;height:120px;' src=<%=request.getContextPath() %>/attachments/"+value.path+">"
									+"</a></div><a href='#'>"+value.name+"</a>"
									+"<p>Police Station :"+value.policeStationName +"</p>"
									+"<p>Date : "+value.caseRegistrationDate +"</p>"
									+"</div>	");
		 						
						    i++;
						    
					   });
                  
             
             });
             
             
      });
             
             
      
 });
 </script>

<section class="breadcrumb p07" style="height:45px;border-bottom:1px solid gray!IMPORTANT;" id="pressReleases">
<span class="press" style="margin: 0px;
padding: 12px;
height: 49%;"> <span style="margin-top:20px;"><a href="#" style="color:white!IMPORTANT;height:100%;margin-top:14px;">Press Releases </a></span></span> 

		
	</section>