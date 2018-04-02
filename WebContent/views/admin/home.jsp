 <%@page import="java.util.Iterator"%>
<%@page import="vo.BookingVO"%>
<%@page import="java.util.List"%>
<%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 
 <script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jscharts.js"></script>
 
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Home </li>
            <li><span class="separator"></span>Dashboard </li>
        </ul>   
  <div class="pageheader">
           
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
                <h5>Home</h5>
                <h1>Welcome Back </h1>
            </div>
        </div><!--pageheader-->
        
        <div class="maincontent">
            <div class="maincontentinner">
                
               
               
               <%  List entries = (List) session.getAttribute("entries"); 
               
 					
 					int count = 1;
 				
               
 						out.println("<h2> Parking Wise Booking Details </h2> <br>");
               %> 
                
                <style>
 .maincontentinner #graph<%=count %> div img {display:none!IMPORTANT;}
 </style>
               <div id="graph<%=count %>">Loading graph...</div>

<script type="text/javascript">
	var myData = new Array(
			<%  int c = 1; 
			boolean flag = false;
					
			for (Object[] row : (List<Object[]>) entries) {
							

				
				
							Object parkingName = row[0];
							Object number = row[2];
							if(flag==true)
								out.print(",");
							
							out.print("['" + parkingName+ "'," + number + " ]");
							
							
							c++;
							flag=true;
						}%>
	);
	
	<% if(c == 3) {%>
	var colors = ['#0673B8', '#0091F1',];
	<% } else if(c == 4 ) { %>
	var colors = ['#0673B8', '#0091F1', '#F85900'];
	<% } else { %>
	var colors = ['#0673B8', '#0091F1', '#F85900', '#1CC2E6'];
	<% } %>
	
	var myChart = new JSChart('graph<%=count %>', 'pie');
	myChart.setDataArray(myData);
	myChart.colorizePie(colors);
	myChart.setTitle('Parking Wise Booking Details');
	myChart.setTitleColor('#8E8E8E');
	myChart.setTitleFontSize(11);
	myChart.setTextPaddingTop(280);
	myChart.setPieValuesDecimals(1);
	myChart.setPieUnitsFontSize(9);
	myChart.setPieValuesFontSize(8);
	myChart.setPieValuesColor('#fff');
	myChart.setPieUnitsColor('#969696');
	myChart.setSize(616, 321);
	myChart.setPiePosition(308, 145);
	myChart.setPieRadius(95);
	myChart.setFlagColor('#fff');
	myChart.setFlagRadius(4);
	myChart.setTooltip(['Firefox','Including Mozilla and all Gecko browsers']);
	myChart.setTooltip(['IE6','Including IE5 and older browsers']);
	myChart.setTooltipOpacity(1);
	myChart.setTooltipBackground('#ddf');
	myChart.setTooltipPosition('ne');
	myChart.setTooltipOffset(2);
	myChart.setBackgroundImage('chart_bg.jpg');
	myChart.draw();
</script>
               <%  
		 
               out.println("<ol>");
               int c1=1;
					for (Object[] row : (List<Object[]>) entries) {
						
						out.println("<li> PS-"+c1+"  "+row[1]+"</li>");
						c1++;
					}
					out.println("</ol>"); 
               
						%>
						
						<% 
					
					count++;
 					 %>
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>       