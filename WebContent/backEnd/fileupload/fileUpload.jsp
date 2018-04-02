<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/style.default.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/backEnd/css/bootstrap-fileupload.min.css" type="text/css" />


</head>
<body style="background: white;">
	<div class="widgetcontent" style="border:0px;">
		<form class="stdform stdform2"
			action="<%=request.getContextPath() %>/UploadServletSimple"
			method="post"
			enctype="multipart/form-data"
			>


			<br>
			<div class="par">
				<label>File </label> <span class="field">
					<div class="fileupload fileupload-new" data-provides="fileupload">
						<div class="input-append">
							<div class="uneditable-input span3">
								<i class="iconfa-file fileupload-exists"></i> <span
									class="fileupload-preview"></span>
							</div>
							<span class="btn btn-file"><span class="fileupload-new">Select
									file</span> <span class="fileupload-exists">Change</span> 
									<input type="file" name="file"></span> <a href="#" class="btn fileupload-exists"
								data-dismiss="fileupload">Remove</a>
						</div>
					</div>
					
					<button class="btn btn-primary">Upload</button>
					
				</span>
			</div>



			<p class="stdformbutton">
				

			</p>

		</form>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/backEnd/js/bootstrap-fileupload.min.js"></script>
	
</body>
</html>