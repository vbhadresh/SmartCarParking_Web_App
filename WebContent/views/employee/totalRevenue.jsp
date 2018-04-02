 <%@page import="vo.BookingVO"%>
<%@page import="java.util.List"%>
<%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 
 <script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jscharts.js"></script>
 <style>
 .maincontentinner #graph3 div img {display:none!IMPORTANT;}
 </style>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Statistics </li>
            <li><span class="separator"></span>Total Revenue</li>
        </ul>   
  <div class="pageheader">
           
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
                <h5>Statistics</h5>
                <h1>Total Revenue</h1>
            </div>
        </div><!--pageheader-->
        
        <div class="maincontent">
            <div class="maincontentinner">
                
               <div id="graph3">Loading graph...</div>

<script type="text/javascript">
var myData = new Array( 
		<%  int c = 1; 
		boolean flag = false;
		List entries = (List) session.getAttribute("entries"); 
        
			
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
	var myChart = new JSChart('graph3', 'bar');
	myChart.setDataArray(myData);
	myChart.colorizeBars(colors);
	myChart.setTitle('Total Revenue ');
	myChart.setTitleColor('#8E8E8E');
	myChart.setAxisNameX('');
	myChart.setAxisNameY('%');
	myChart.setAxisColor('#C4C4C4');
	myChart.setAxisNameFontSize(16);
	myChart.setAxisNameColor('#999');
	myChart.setAxisValuesColor('#7E7E7E');
	myChart.setBarValuesColor('#7E7E7E');
	myChart.setAxisPaddingTop(60);
	myChart.setAxisPaddingRight(140);
	myChart.setAxisPaddingLeft(150);
	myChart.setAxisPaddingBottom(40);
	myChart.setTextPaddingLeft(105);
	myChart.setTitleFontSize(11);
	myChart.setBarBorderWidth(1);
	myChart.setBarBorderColor('#C4C4C4');
	myChart.setBarSpacingRatio(50);
	myChart.setGrid(false);
	myChart.setSize(616, 321);
	myChart.setBackgroundImage('chart_bg.jpg');
	myChart.draw();
</script>



                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>       