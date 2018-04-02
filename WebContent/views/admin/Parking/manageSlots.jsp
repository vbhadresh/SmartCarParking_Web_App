 <head><title>Slots</title>		
		<Style>
		#mainwrapper{
		height:auto!IMPORTANT;
		}</Style></head>
 <%@include file="/WEB-INF/file/mst_admin_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Slots</li>
            <li><span class="separator"></span>Manage Slots</li>
        </ul>   
 
  <div class="pageheader">
             <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
               <h5>Slots</h5>
                <h1>Manage Slots</h1>
            </div>
        </div><!--pageheader-->
        

		
		<div class="maincontent">
            <div class="maincontentinner">
        
                                         
 				<c:forEach items="${sessionScope.obj}" var="record">
 					<img alt="Image Not Available" src="<%=request.getContextPath() %>/attachments/${record.attachmentID.path}" style="max-height:600px;" />
 				</c:forEach>
        
            
      <a href="${pageContext.request.contextPath}/SlotsController?mode=6" class="btn btn-info"><i class="iconfa-pencil"></i></a> Add Slots       
                <h4 class="widgettitle">Slots</h4>
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
                            <th class="head0">slotName</th>
                            <th class="head1">Description</th>
                      <th class="head0">Direction</th>
                           
                            <th class="head1">Action</th>
                            
                        </tr>
                       
                    </thead>
                    <tbody>
                                         
 				<c:forEach items="${sessionScope.obj_all}" var="record">
 					
                        <tr class="gradeX">
                          <td class="aligncenter"><span class="center">
                            <input type="checkbox" />
                          </span></td>
                            <td>${record.slotName}</td>
                            <td>${record.description }</td>
                         <td><img alt="Image Not Available" src="<%=request.getContextPath() %>/attachments/${record.attachmentID.path}" style="max-height:200px;min-width:100px;" /></td>
                            
                            
                            <td class="center">
                            <a href="<%=request.getContextPath() %>/SlotsController?mode=2&id=${record.slotID}" class="btn btn-info"><i class="icon-edit"></i></a>
                            <a href="<%=request.getContextPath() %>/SlotsController?mode=4&id=${record.slotID}" class="btn btn-info"><i class="iconsweets-trashcan"></i></a>
                            </td>
                            
                        </tr>
                  </c:forEach>     
                    </tbody>
                </table>
                
            
            
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
 
 <%@include file="/WEB-INF/file/mst_footer.jsp" %>
 
 <%@include file="/WEB-INF/file/mst_table.jsp" %> 