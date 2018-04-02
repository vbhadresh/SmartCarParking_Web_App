 <%@include file="/WEB-INF/file/mst_user_header.jsp" %>
 <div class="rightpanel">
        
        <ul class="breadcrumbs">
            <li><a href=""><i class="iconfa-home"></i></a> </li>
            <li><span class="separator"></span>Home</li>
            
        </ul>   
 
  <div class="pageheader">
           
            <div class="pageicon"><span class="iconfa-hdd"></span></div>
            <div class="pagetitle">
                <h5>Hello!</h5>
                <h1></h1>
            </div>
        </div><!--pageheader-->
        
        
        <div class="maincontent">
            <div class="maincontentinner">
            <h4 class="widgettitle"> ${sessionScope.obj_all[0].parkingName}</h4>
            <div class="widgetcontent">
                        	<dl>
                                <dt> ${sessionScope.obj_all[0].parkingName}</dt>
                                <dd> Managed by Smart Parking System</dd>
                          </dl>
                            <div class="dline15"></div>
                            <dl class="dl-horizontal">
                                <dt>Address Line 1</dt>
                                <dd>  ${sessionScope.obj_all[0].addressLine1 }</dd>
                                <dt>Euismod</dt>
                                <dd>${sessionScope.obj_all[0].addressLine2 }</dd>
                                
                                <dt>Landmark</dt>
                                <dd> ${sessionScope.obj_all[0].landmark }</dd>
                                <dt>Pincode</dt>
                                <dd>${sessionScope.obj_all[0].pincode }</dd>
                            </dl>
                      
        
              		<script
src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
              		
              		
              		
</script>	


<div id="googleMap" style="width:500px;height:380px;"></div>
  </div>
<script>


var lat=document.getElementById("lat");
var lon=document.getElementById("lon");


var myCenter=new google.maps.LatLng(<%=session.getAttribute("lat") %>,<%=session.getAttribute("lon") %>);

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:18,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>


                
                
            </div><!--maincontentinner-->
        </div><!--maincontent-->
        
<%@include file="/WEB-INF/file/mst_footer.jsp" %>       