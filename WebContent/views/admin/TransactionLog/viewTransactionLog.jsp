 <head><title>Transaction Log</title></head>
 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Transaction Log</li>
            <li><span class="separator"></span>View Transaction Log</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Transaction Log</h5>
                <h1>View Transaction Log</h1>
            </div>
        </div><!--pageheader-->
        
		
		
		
		<div class="maincontent">
            <div class="maincontentinner">
            
      
      
      <a href="${pageContext.request.contextPath}/TransactionLogReportController" class="btn btn-info"><i class="iconfa-pencil"></i></a> Get Report in PDF     
                <h4 class="widgettitle">Transaction Log</h4>
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
                            <th class="head1">Transaction Type</th>
                      <th class="head0">Sent Time</th>
                             <th class="head1">Description</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                    
                   
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td>${record.userID.userName} - ${record.userID.personID.firstName} ${record.userID.personID.lastName}</td>
                            <td>${record.transactionType }</td>
                            <td>${record.sentTime }</td>
                            <td>${record.description }</td>
                              
                           
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 