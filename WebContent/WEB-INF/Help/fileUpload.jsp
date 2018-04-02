
<form action="<%=request.getContextPath() %>/DB_UploadServletMultipleFile" method="post" enctype="multipart/form-data">
			<div class="par">
				 <label> Identity Proof of ${param.additional }</label>
			
				<div data-provides="fileupload" class="fileupload fileupload-new">
				<div class="input-append">
				<div class="uneditable-input span3">
				    <i class="iconfa-file fileupload-exists"></i>
				    <span class="fileupload-preview"></span>
				</div>
				
				<span class="btn btn-file"><span class="fileupload-new">Select file</span>
				<span class="fileupload-exists">Change</span>
				<input type="file"></span>
				
				<a data-dismiss="fileupload" class="btn fileupload-exists" href="#">Remove</a>
				</div>
				<p>
				<button type="submit" class="btn btn-primary">Upload </button>
				</p>
			    </div>
			    
			    
			    
			</div>	
			
                                
                        
			
			
</form>			