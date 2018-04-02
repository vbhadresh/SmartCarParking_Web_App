 <head><title>User Log</title></head>
 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>User Log</li>
            <li><span class="separator"></span>View User Log</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>User Log</h5>
                <h1>View User Log</h1>
            </div>
        </div><!--pageheader-->
        
		
	
		
		<div class="maincontent">
            <div class="maincontentinner">
                  
      
      
      <a href="${pageContext.request.contextPath}/UserLogReportController" class="btn btn-info"><i class="iconfa-pencil"></i></a> Get Report in PDF     
           
             
                <h4 class="widgettitle">User Log</h4>
                <table id="dyntable" class="table table-bordered responsive">
                    <colgroup>
                        <col class="con0" style="align: center; width: 4%" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        
                        <col class="con1" />
                    </colgroup>
                    <thead>
                   
                        <tr>
                          	<th class="head0 nosort"><input type="checkbox" class="checkall" /></th>
                            <th class="head0">User Details </th>
                            <th class="head1">Person Details </th>
                      <th class="head0">Login Time</th>
                             <th class="head1">User Type</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                   
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td>${record.userID.userName}</td>
                            <td> ${record.userID.personID.firstName} ${record.userID.personID.lastName}</td>
                            <td>${record.loginTime }</td>
                            <td>${record.userID.userType }</td>
                              
                           
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 