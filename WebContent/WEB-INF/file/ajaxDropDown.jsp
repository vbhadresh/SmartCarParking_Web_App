<script type="text/javascript" 	src="${pageContext.request.contextPath}/backEnd/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
    	
     
    	$(".country").change(function(event) {  
    		 
    	
    		 
        var $country=$("select.country").val();
        var $mode="dropDown";
           
        $.get('<%=request.getContextPath()%>/StateController',{countryID:$country,mode:$mode},function(responseJson) {   
        	   
        	   var $select = $(".state");
        	  
             
        	   $select.find('option').remove();                          
             
               $.each(responseJson, function(key, value) {      
            	   
            	   $('<option>').val(key).text(value).appendTo($select);      
                    });
            
           
        });
        });
    	
    	
    	
    	$(".state").change(function(event) {  
            
            var $state=$("select.state").val();
            var $mode="dropDown";
               
            $.get('<%=request.getContextPath()%>/DistrictController', {stateID:$state,mode:$mode},function(responseJson) {

				var $select = $(".district");

				$select.find('option').remove();

				$.each(responseJson, function(key, value) {
					$('<option>').val(key).text(value).appendTo($select);
				});
			});
		});
    	
    	
    	
	  $(".district").change(function(event) {  
		 
            var $district=$("select.district").val();
            var $mode="dropDown";
               
            $.get('<%=request.getContextPath()%>/CityController', {districtID:$district,mode:$mode},function(responseJson) {

				var $select = $(".city");

				$select.find('option').remove();

				$.each(responseJson, function(key, value) {
					$('<option>').val(key).text(value).appendTo($select);
				});
			
				
            });
		});


	});
</script>
