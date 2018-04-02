<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!-- Google web fonts -->
		<link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow:400,700" rel='stylesheet' />

		<link href="<%=request.getContextPath() %>/backEnd/assets/css/popup.css" rel="stylesheet" />
		
		<!-- The main CSS file -->
		<link href="<%=request.getContextPath() %>/backEnd/assets/css/style.css" rel="stylesheet" />
		
		<link rel="stylesheet" href="<%=request.getContextPath() %>/backEnd/assets/css/jquery-ui-1.10.4.custom.css">
				<style type="text/css">
		.content {
	position: relative;
	border: 0;
	padding: .5em 1em;
	background: none;
	overflow: auto;
}

.ui-dialog .ui-dialog-titlebar-close {
	position: absolute;
	right: .3em;
	top: 50%;
	width: 20px;
	margin: -10px 0 0 0;
	padding: 1px;
	height: 20px;
}

.ui-dialog .ui-dialog-titlebar-close {
	position: absolute;
	right: .3em;
	top: 50%;
	width: 20px;
	margin: -10px 0 0 0;
	padding: 1px;
	height: 20px;
}

.ui-dialog .ui-widget .ui-widget-content .ui-corner-all .ui-front .ui-dialog-buttons .ui-draggable .ui-resizable{
top:300px!IMPORTANT;
}
		</style>
    
<div id="myDialog" title="Drop your file here">

<div class="content" >

<form id="upload" method="post" action="<%=request.getContextPath() %>/UploadServlet" enctype="multipart/form-data">
			<div id="drop">
				Drop Here

				<a>Browse</a>
				<input type="file" name="upl" multiple />
			</div>

			<ul>
				<!-- The file uploads will be shown here -->
			</ul>

		</form>
		
		</div>

</div>

	
	
	
      
		<!-- JavaScript Includes -->
		<script src="<%=request.getContextPath() %>/backEnd/assets/js/jquery-1.10.2.js"></script>
		<script src="<%=request.getContextPath() %>/backEnd/assets/js/jquery.knob.js"></script>

		<!-- jQuery File Upload Dependencies -->
		<script src="<%=request.getContextPath() %>/backEnd/assets/js/jquery.ui.widget.js"></script>
		<script src="<%=request.getContextPath() %>/backEnd/assets/js/jquery.iframe-transport.js"></script>
		<script src="<%=request.getContextPath() %>/backEnd/assets/js/jquery.fileupload.js"></script>
		
		<!-- Our main JS file -->
		<script src="<%=request.getContextPath() %>/backEnd/assets/js/script.js"></script>
		

		<!-- Popup -->
		<script src="<%=request.getContextPath() %>/backEnd/assets/js/jquery-ui-1.10.4.custom.js"></script>
		<script src="<%=request.getContextPath() %>/backEnd/assets/js/popup.js"></script>

    
    