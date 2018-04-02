 <head><title> Booking</title></head>
 <%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span> Booking</li>
            <li><span class="separator"></span>Manage Booking</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5> Booking</h5>
                <h1>Manage Booking</h1>
            </div>
        </div><!--pageheader-->
        
		
		
		
		<div class="maincontent">
            <div class="maincontentinner">
            
      <a href="${pageContext.request.contextPath}/BookingController?mode=9" class="btn btn-info"><i class="iconfa-pencil"></i></a> Register Booking       
                <h4 class="widgettitle">Booking</h4>
                <table id="dyntable" class="table table-bordered responsive">
                    <colgroup>
                        <col class="con0" style="align: center; width: 4%" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                    </colgroup>
                    <thead>
                   
                        <tr>
                          	<th class="head0 nosort"><input type="checkbox" class="checkall" /></th>
                            <th class="head0">User Details </th>
                            <th class="head1">Slots </th>
                      <th class="head0"> Vehicle</th>
                           <th class="head0"> Time (IN) - Time (Out) </th>
                           <th class="head0"> Payment Initial</th>
                           <th class="head0"> Payment Final </th>
                            <th class="head1">Action</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                                           
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
 				
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td>${record.userID.userName} ${record.userID.personID.firstName}  ${record.userID.personID.lastName} </td>
                            <td>${record.slotID.slotName }</td>
                         <td>${record.vehicleID.model} ${record.vehicleID.numberOfVehicle}</td>
		                         <td>${record.inTime } -- ${record.outTime }</td>
		                         <td>${record.paymentInitial }</td>	
		                          <td>${record.paymentFinal }</td>

                         <td class="center">
                             
                               <c:if test="${record.outTime == null}" >
                                <a href="<%=request.getContextPath() %>/BookingController?mode=8&id=${record.bookingID}" class="btn btn-info"><i class="icon-edit"></i> Generate Bill</a>
                                </c:if>
                                
                                 <c:if test="${record.outTime != null}" >
                                <a href="#" class="btn btn-success"> Paid ! </a>
                                </c:if>
                            <a href="<%=request.getContextPath() %>/BookingController?mode=2&id=${record.bookingID}" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/BookingController?mode=4&id=${record.bookingID}" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                           
                           
                             
                            
                           
                            </td>
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
        
        
        
        <script type="text/javascript" 	src="${pageContext.request.contextPath}/backEnd/js/jquery-1.11.0.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {

  

	
$("#book").click(function(event) {  


var $RecipientMobileNo =$("#mobileNumber").val();
var $MsgText='Thanks for Booking with our Parking System for your vehicle '+<%=session.getAttribute("otp") %>;

<% 

ServletContext context=getServletContext();
String toMobileNumber = "9979743137";
String message = "Thanks you";

%>
   
$.get('http://psms.krishsoftweb.in/sendsms.aspx?mobile=<%=context.getInitParameter("mobile")%>&pass=<%=context.getInitParameter("smsGatewayPassword")%>&senderid=<%=context.getInitParameter("senderid")%>&to=<%=toMobileNumber%>&msg=<%=message%>',{MsgText:$MsgText,RecipientMobileNo:$RecipientMobileNo},function(responseHTML) {   
	   
	
});


});
</script>
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 