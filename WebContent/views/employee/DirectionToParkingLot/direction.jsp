 <%@page import="vo.BookingVO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@include file="/WEB-INF/file/mst_emp_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Home</li>
            
        </ul>   
 
  <div class="pageheader">
           
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
                
                <h1></h1>
            </div>
        </div><!--pageheader-->
        
        
        <div class="maincontent">
            <div class="maincontentinner">
                
             <div class="widgetbox box-inverse" >
                            <h4 class="widgettitle"> Get Direction for the User / Customer to the Parking Lot <a class="close">X</a> <a class="minimize">-</a></h4>
                            <div class="widgetcontent" style="min-height: 600px;">

			
			
			
			<% 
			
			List ls = (List) session.getAttribute("obj_all");
			
			Iterator itr = ls.iterator();
			
			;
			
			while(itr.hasNext()){
				
				BookingVO bookingVO = (BookingVO) itr.next();
				
				if(bookingVO.getBookingID() == Long.valueOf(request.getParameter("bookingID") )){
					
				
			
			%>
			
			         <img src="${pageContext.request.contextPath}/attachments/<%=bookingVO.getSlotID().getAttachmentID().getPath() %>" style="height:auto%;width:100%;max-width:300px;" alt="" />
								
				<%
				}
			}
				
				%>				
						

						</div>
						<!--tab-content-->
						
						
					</div>




				</div>
             </div>
                
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
<%@include file="/WEB-INF/file/mst_footer.jsp" %>       