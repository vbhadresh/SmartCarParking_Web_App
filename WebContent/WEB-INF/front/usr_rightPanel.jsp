<aside style="float:right;width: 240px;;padding-right: 53px;">
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>		
          
            
            <section class=" myPanel newDesignPress " style='height:300px!IMPORTANT;margin-left: 5px;padding-left: 15px;width:97%;' >
				<h3 style="margin-top: -15px;" class="latestupdate"><span style="border-bottom:0px!IMPORTANT;">Latest Updates </span></h3>
               
                <marquee  style="height: 80%;margin-left: -4px;" align="middle" behavior="scroll" direction="up" scrollamount="2" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 2, 0);">
    
				
               <ul class="tick" id="updates">
					<p style ='clear:left;float: left;' >Date | <a href="#" > No Data Avaliable </a></p>
					
				</ul>	
				
        </marquee>
        
			</section>
			
			
			 <section class=" myPanel newDesignPress " style='height:300px!IMPORTANT;margin-left: 5px;padding-left: 15px;width:97%;' >
				<h3 style="margin-top: -15px;" class="latestupdate"><span style="border-bottom:0px!IMPORTANT;">Missing Persons </span></h3>
               
                <marquee  style="height: 80%;margin-left: -4px;" align="middle" behavior="scroll" direction="up" scrollamount="2" onmouseover="this.setAttribute('scrollamount', 0, 0);" onmouseout="this.setAttribute('scrollamount', 2, 0);">
    
				
               <ul class="tick" id="missingPersons" >
               
						<div  style='display:none;' >
							<div class="img"><a href="#">
							<img style="width:120px;height:120px" src="" alt="">
							</a></div><a href="#"></a>
							<p></p>
							<p></p>
							</div>
						
				</ul>	
				
        </marquee>
        
			</section>
			
			
			
			<%--  <section class=" myPanel newDesignPress" style='height:200px!IMPORTANT;margin-left: 5px;padding-left: 15px;width:97%;' >
				<h3 style="margin-top: -15px;" class="latestupdate"><span style="border-bottom:0px!IMPORTANT;">Registered User  </span></h3>
               
               <form id="login" action="<%=request.getContextPath() %>/" method="post">
       
            
		            <input type="hidden" name="login" value="true" />
		            
		            
		            <div class="myInput">
		              <span class="myLabel">Username : </span> <input type="text" name="userName" class="frontLogin" placeholder="USER NAME" />
		            </div>
		            <div class="myInput">
		               <span class="myLabel"> Password :</span> 
		               <input  class="frontLogin" name="password" title="at least eight symbols containing at least one number, one lower, and one upper letter" type="text" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required />
		              
		            </div>
		            <div class="myInput" style="float:right" >
		                <button  id="myloginbutton" name="submit">Login</button>
		            </div>
          	<div style="clear:both;float:right;margin-top:5px;">
          	<a href="" style="text-decoration: underline;">Sign Up</a>
          	</div>
          	<div style="clear:both;float:right;">
          	<a href="" style="text-decoration: underline;">Forgot Password?</a>
          	</div>
          	
            
        </form>
			</section> --%>
			
			
			  <section class="myPanel " style="padding: 3px;padding-top: 10px;" >
                
                    <a  class="img-borderNew" href="<%=request.getContextPath() %>/views/user/complain/fileComplain.jsp">  <img  src="<%=request.getContextPath() %>/frontEnd/images/buttons/complnt_btn.jpg" /></a>
                        <br/><br/>
		    <a  class="img-borderNew"  href="<%=request.getContextPath() %>/frontEnd/documents/actdetail.pdf">  <img src="<%=request.getContextPath() %>/frontEnd/images/buttons/act_rule.jpg" /></a>
	<br/><br/>
                <a class="img-borderNew" href="<%=request.getContextPath() %>/FeedBack"> <img   src="<%=request.getContextPath() %>/frontEnd/images/buttons/btn4.jpg" width="230"/></a> 
                <br/><br/>
                </section>
            
            
             <section class="myPanel" style='padding: 3px;'>
               <a href="http://india.gov.in/">  <img src="<%=request.getContextPath() %>/frontEnd/images/buttons/banner4.gif"/></a>
		<br/><br/>
                <a href="<%=request.getContextPath() %>/views/user/guest/RTI/RTI.jsp""> <img src="<%=request.getContextPath() %>/frontEnd/images/buttons/right_info_act.jpg" /></a>
               
               
		</section>
            
         
            
	</aside>