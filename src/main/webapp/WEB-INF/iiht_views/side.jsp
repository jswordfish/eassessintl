	<%@ page import="com.assessment.data.*, java.text.*, java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	
<link href="https://fonts.googleapis.com/css?family=Segoe+UI" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/responsive.css" rel="stylesheet" type="text/css">
		
<div class="column col-sm-2 col-xs-1 sidebar-offcanvas" id="sidebar" style="overflow-y: scroll;">
	<ul class="nav" id="menu">
	    <li class="logolight"><a href="http://www.eassess.com" data-toggle="offcanvas"><i class="fa fa-bars fa-2x"></i><span class="collapse in hidden-xs"><img src="./resources/images/logoiiht.png" alt="logo"></span></a></li>
	    <li class="active"><a href="javascript:notify('Information', 'We will release the feature pretty soon! Pease wait for our next release');"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">Dashboard</span></a></li>
	    <li><a href="question_list"><img src="./resources/images/question_icon.png" alt="logo"> <span class="collapse in hidden-xs">Question Bank</span></a></li>
	    <li><a href="testlist"><img src="./resources/images/test_icon.png" alt="logo"> <span class="collapse in hidden-xs">Tests</span></a></li>
		<li><a href="skills"><img src="./resources/images/test_icon.png" alt="logo"> <span class="collapse in hidden-xs">Skills</span></a></li>
		<%
		User user = (User) request.getSession().getAttribute("user");
		System.out.println("user is "+user.getEmail() );
			if(user == null){
					response.sendRedirect("login");
			}
		Boolean admin = false;	
			if(user.getType().equalsIgnoreCase("ADMIN") || user.getType().equalsIgnoreCase("SUPER_ADMIN")  ){
				admin = true;
			}
			
			if(admin){
				
		%>
		
		<li><a href="showClusters"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Cluster Management</span></a></li>
		<li><a href="showAllResultsforMFA"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Multi File Tests Results</span></a></li>
		
		
		
		<li><a href="showAllResultsforMFALocal"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Local Multi File Tests Results</span></a></li>
		<li><a href="showLocalMultifileRecordsWithProblem"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Local Multi File Problem Records</span></a></li>
		<li><a href="findAllFullStackLocalQuestionMapperInstancesWithDuplicateRecords"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Local Multi Duplicate Git  Records</span></a></li>
		
		
		 <li><a href="domainReport"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Domain based Results</span></a></li>
		 <li><a href="modules"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Modules Management</span></a></li>
		 
		 <li><a href="licenses"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">License Management</span></a></li>
		 
	    <li><a href="showReports"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Results</span></a></li>
		 
	    <li><a href="codingSessions"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Code Analysis Reports</span></a></li>
		<li><a href="showSkillTags"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Skill based Reports</span></a></li>
		<li><a href="showProfileParams"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">Recomm Setting</span></a></li>
		
		<%
			}
		%>
		
		<li><a href="singleFileSessions"><img src="./resources/images/results_icon.png" alt="logo"> <span class="collapse in hidden-xs">Single File Test Reports</span></a></li>
		
		<li><a href="listTestLinks"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">Test Links Management</span></a></li>
		<
		
		
		<% 
			if(admin){
				
		%>
		<li><a href="lmsAdmins"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">LMS Admin Users</span></a></li>
		
		<li><a href="showjobDescriptions"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">Job description Management</span></a></li>
		
		
		<li><a href="listDomainMappings"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">Test Domain Attempts Management</span></a></li>
		
		<%
		
			}
		%>
		
		<li><a href="showAllSchedules"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">Schedule Management</span></a></li>
		<li><a href="verification"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">Verify Data</span></a></li>
	    <%
		
		Boolean showTenantAdmin = false;
		if(user.getEmail().endsWith("iiht.com") && admin==true){
			showTenantAdmin = true;
			System.out.println("Admin true");
	  %>
		<li><a href="listTenants"><img src="./resources/images/dashboard_icon.png" alt="logo"> <span class="collapse in hidden-xs">Tenant Management</span></a></li>
	   <%	  
		}
	    %>
		   
			    
	  <li><a href="listLMSUsers"><img src="./resources/images/candidates_icon.png" alt="logo">  <span class="collapse in hidden-xs">Dashboard Enabled Users</span></a></li>  
	    
	 <li><a href="listUsers"><img src="./resources/images/candidates_icon.png" alt="logo">  <span class="collapse in hidden-xs">Users</span></a></li>
	 
	 <li><a href="instructorDashboard"><img src="./resources/images/candidates_icon.png" alt="logo">  <span class="collapse in hidden-xs">Instructor Dashboard</span></a></li>
	 
	    <!--    <li><a href="javascript:callUpload();" id="uploadLink"><img src="images/candidates_icon.png" alt="logo"> <span class="collapse in hidden-xs">Candidates</span></a></li>
	    <form id="fileForm" method="POST" enctype="multipart/form-data" >
		<input type="file" name="fileFromUserForm_rem" id="fileFromUserForm_rem" style="display:none" />
	</form>  -->
	</ul>
    </div>
    
    
    <script>
    
    function callUpload(){
     $("#fileFromUserForm_rem").click();
    }
    
    function notDone(){
    
    }
    
    
    $(document).ready(function() {
	    
	   var file = $('[name="fileFromUserForm_rem"]');
	   var imgContainer = $('#imgContainer');
	   
		
		
	var fileU = document.getElementById('fileFromUserForm_rem');
	fileU.addEventListener("change", function () {
		  if (fileU.files.length > 0) {
		   var filename = $.trim(file.val());
		
		if (!(isXlsx(filename) )) {
		    notify('Error', 'Please select an xlsx file to upload');
		    return;
		}
		
		$.ajax({
		   xhr: function() {
		    var xhr = new window.XMLHttpRequest();
		    return xhr;
		  },
		   url: 'uploadUsers',
		    type: "POST",
		    data: new FormData(document.getElementById("fileForm")),
		    enctype: 'multipart/form-data',
		    processData: false,
		    contentType: false
		  }).done(function(data) {
		    notify('Success', 'File Upload Successful');
		   
		  }).fail(function(jqXHR, textStatus) {
		      notify('Failure', 'File Upload Failed. Please contact Administrator');
		  });
		  document.getElementById('fileFromUserForm_rem').value = null;
		    return;
		  }
		 
		});
	  
	});
	
		function notify(messageType, message){
		 var notification = 'Information';
			 $(function(){
				 new PNotify({
				 title: notification,
				 text: message,
				 type: messageType,
				 styling: 'bootstrap3',
				 hide: true
			     });
			 }); 	
		}
     
    
    </script>