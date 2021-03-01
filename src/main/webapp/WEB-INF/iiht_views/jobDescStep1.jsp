<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*"%>
<html>
<head>
       <title>eAssess</title>
      <link href="images/E-assess_E.png" rel="shortcut icon">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <link href="https://fonts.googleapis.com/new/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="new/css/font-awesome.min.css">

        <link href="css/pnotify.custom.min.css" rel="stylesheet" type="text/css">
	
	   <script src="new/campaign/js/jquery.min.js"></script>
        <script src="new/campaign/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/pnotify.custom.min.js"></script>
	<script type="text/javascript" src="scripts/custom.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.css">
     	
     	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="new/css/font-awesome.min.css">
        <link rel="stylesheet" href="new/campaign/css/bootstrap.min.css">
        <link rel="stylesheet" href="new/campaign/css/style.css">
     <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.css">
     <style>
	.add-tests .card {
    margin: 10px;
    width: 28%;
    height: 78%;
	}
	
	.campaign-test .steps-block ul li {
		display: block;
		padding: 6px;
		border-bottom:none;
	}
	 
	 </style>
    </head>
<body>
 <div class="master-container">
            <header>
                <div class="container-fluid">
                    <button class="nav-bar" type="button">
                        <i class="fa fa-bars"></i>
                    </button>
                    <a href="#" class="yaksha-logo my-auto">
                        E<span>ASSESS</span>
                    </a>
                    <nav class="">
                        <button class="nav-bar-close" type="button">
                            <i class="fa fa-close"></i>
                        </button>
                         <a href="dashboardnew">
                            Dashboard
                        </a>
                        <a href="questionssnew">
                            Question Bank
                        </a>
                        <a href="testsnew">
                            Tests
                        </a>
                        <a href="#" class="view-more active">
                            Campaigns <i class="fa fa-angle-down"></i>
                        </a>
                        <div class="more-nav">
                            <a href="newSkills">
                                Skills
                            </a>
                            <a href="newShowClusters">
                                Cluster Management
                            </a>
                            <a href="newShowAllResultsforMFA">
                                Multi-file Test Results
                            </a>
                            <a href="newDomainReport">
                                Domain based Results
                            </a>
                            <a href="javascript:notify('Coming Soon! User the old Admin UI now')">
                                Modules Management
                            </a>
                            <a href="newLicenses">
                                License Management
                            </a>
                            <a href="javascript:notify('Coming Soon! User the old Admin UI now')">
                                Results
                            </a>
                            
                            <a href="javascript:notify('Coming Soon! User the old Admin UI now')">
                                Skill based Reports
                            </a>
                            <a href="recomms">
                                Recomm Settings
                            </a>
                            <a href="newSingleFileSessions">
                                Single File Test Reports
                            </a>
                            <a href="newListTestLinks">
                                Test Links Management
                            </a>
                            <a href="newLmsAdmins">
                                LMS Admin Users
                            </a>
                            <a href="javascript:notify('Coming Soon! User the old Admin UI now')">
                                Job Description Management
                            </a>
                            <a href="javascript:notify('Coming Soon! User the old Admin UI now')">
                                Test Domain Attemps Mangement
                            </a>
                            <a href="javascript:notify('Coming Soon! User the old Admin UI now')">
                                Schedule Management
                            </a>
                            <a href="newVerification">
                                Verify Data
                            </a>
                            <a href="newListTenants">
                                Tenant Management
                            </a>
                            <a href="newListUsers">
                                Users
                            </a>
							<a href="showCampaigns">
                                Campaigns
                            </a>
                        </div>
                    </nav>
                    <div class="user-info">
                        <span class="my-auto">Firstname, Lastname</span>
                        <div class="thumbnail my-auto">
                            <span>TJ</span>
                        </div>
                        <button class="sign-out" type="button">
                            <i class="fa fa-sign-out"></i>
                        </button>
                    </div>
                </div>
            </header>
            <section class="content-section">
                <div class="container-fluid">
                    <form action="">
                        <div class="row">
                            <div class="col-xs-12 col-md-10 mx-auto">
                                <div class="page-header">
                                    <h1 class="my-auto">Create New Test Campaign</h1>
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-10 mx-auto form-steps mt-5">
                                <div class="d-flex flex-sm-column flex-md-row justify-content-between">
                                    <a href="#step-1" class="steps-link active d-flex pt-3 pr-3 pb-3">
                                        <span class="icon mr-2">
                                            <i class="fa fa-file-text"></i>
                                        </span>
                                        <span class="my-auto">
                                            Job Description Details
                                        </span>
                                    </a>
                                    <a href="#step-2" class="steps-link d-flex p-3">
                                        <span class="icon mr-2">
                                            <i class="fa fa-file-text-o"></i>
                                        </span>
                                        <span class="my-auto">
                                            Job Description Skills
                                        </span>
                                    </a>
                                    <a href="#step-3" class="steps-link d-flex p-3">
                                        <span class="icon mr-2">
                                            <i class="fa fa-users"></i>
                                        </span>
                                        <span class="my-auto">
                                            Recruitment Consultant
                                        </span>
                                    </a>
                                    <a href="#step-4" class="steps-link d-flex pt-3 pl-3 pb-3">
                                        <span class="icon mr-2">
                                            <i class="fa fa-paper-plane-o"></i>
                                        </span>
                                        <span class="my-auto">
                                            Select Campaign
                                        </span>
                                    </a>
                                </div>
                                <div class="border-line"></div>
                            </div>
							
							
							
							<!--  step-1 start-->
                            <div class="col-xs-12 col-md-10 mx-auto mt-5" id="step-1">
                                <div class="d-flex flex-column">
                          <form action="" method="post" enctype="multipart/form-data" id="myForm">
                                    <div class="form-group">
                                        <label for="">Job Description</label>
<!--                                                <input id="name" type="text" class="form-control"  > -->
                                        <input id="name" type="text" class="form-control" value="${description.name}" ${disabled == false?'':'disabled'}>
                                    </div>
                                    <div class="form-group mt-3">
                                        <label for="">Campaign Description</label>
                                          <input type="file" id="file" name="file" class="form-control" >
                                        
<%--                                         <textarea  id="campaignDesc" class="form-control" >${campaign.campaignDesc}</textarea> --%>
                                    </div>
                                    
                            </form>
                                </div>
                            </div>
                           	<!--  step-1 end-->
                            
                            
                            
                             <!--  step-2 start-->
                            <div class="col-xs-12 col-md-10 mx-auto mt-5 d-none" id="step-2">
							 
                                <div class="d-flex flex-wrap justify-content-center campaign-test">
									<div id="campaignTests">
										
									</div>
<!--                                     <div class="steps-block d-flex justify-content-center align-items-center mx-2"> -->
                                       <!-- <button class="btn btn-primary" type="button" data-toggle="modal" data-target=".bd-example-modal-lg" onClick="openCampaignTestsDialog()">
                                            Add Test
                                        </button> -->
										Primary Skill
										<input type="text" value="Java" />
										<input type="text" value="Oops" />
										<input type="text" value="Core Java" />
										<input type="text" value="List" />
										<input type="text" value="ArrayList" />
									<br>
									<br>
										<input type="text" name="primaryweight" />
										Secondary Skill
										<input type="text" value="Java" />
										<input type="text" value="Oops" />
										<input type="text" value="Core Java" />
										<input type="text" value="List" />
										<input type="text" value="ArrayList" />
										<input type="text" name="secondaryweight" />
<!-- 										<button class="btn btn-primary" type="button" onClick="openCampaignTestsDialog()"> -->
<!--                                           Skill List -->
<!--                                         </button> -->
<!--                                     </div> -->
                                </div>
                                 
                            </div>
                          	<!--  step-2 end-->
                            
                            
                            <div class="col-xs-12 col-md-10 mx-auto mt-5 d-none" id="step-3">
                                <div class="d-flex flex-nowrap justify-content-center campaign-test">
                                    <div class="steps-block d-flex p-3 mx-2" style="min-width: 600;">
                                        <!--<button class="btn btn-primary btn-sm candidates" type="button" data-toggle="modal" data-target=".add-candidates">
                                            Update Candidate
                                        </button> -->
										<button class="btn btn-primary btn-sm candidates" type="button" onclick="searchAndPopulaterRecruitersTable('')" >
                                            Add Recruiters
                                        </button>
											<div id = "candidatesId">
											
											</div>
										
                                    </div>
<!--                                     <div class="steps-block d-flex justify-content-center align-items-center mx-2" style="min-width:600"> -->
<!-- 										<button class="btn btn-primary" type="button" onclick="searchAndPopulateReviewersTable('')"> -->
<!--                                             Add Reviewers -->
<!--                                         </button> -->
<!-- 										<div id = "reviewersId"> -->
											
<!-- 											</div> -->
<!--                                     </div> -->
                                </div>
                            </div>
                            <div class="col-xs-12 col-md-10 mx-auto mt-5 d-none" id="step-4">
                                <div class="block mb-4">
                                    <h1>Save Job Description</h1>
                                </div>
                                <div class="d-flex flex-nowrap justify-content-center campaign-test">
                                    <div class="steps-block d-flex p-3 mx-2" style="min-width: 600;">
										<button class="btn btn-primary btn-sm candidates" type="button" onclick="searchAndPopulaterCampaignTable('')" >
                                            Add Campaign
                                        </button>
											<div id = "campaignId">
											
											</div>
										
                                    </div>
                                </div>
                                 
                            </div>
                            <div class="col-xs-12 col-md-10 mx-auto mt-5 mb-5">
                                <hr class="mb-3">
                                <div class="d-flex flex-sm-column flex-md-row justify-content-between campaign-btn">
                                    <span>
                                        <button class="btn btn-secondary mr-3" type="button" onClick="gotoJobDesc();">
                                            Cancel
                                        </button>
                                        <button class="btn btn-outline-secondary" data-val="back" type="button">
                                            Back
                                        </button>
                                    </span>
                                    <span>
                                        <button class="btn btn-primary" data-val="next" type="button" id="nextid" onClick="saveJobDescription();">
                                            Next
                                        </button>
                                    </span>
                                </div>
                            </div>
                        </div>
                         
                    </form>
                </div>
            </section>
            <footer>
                <div class="container-fluid text-right">
                    <span class="copyright">
                        &copy; Copyright 2020-2021 - eAssess
                    </span>
                    <a href="#">
                        Terms and Conditions
                    </a>
                    <a href="#">
                        Privacy Policy
                    </a>
                </div>
            </footer>
             
            <div class="modal fade bd-example-modal-lg add-candidates" tabindex="-1" role="dialog" aria-labelledby="myLargeModalCandidate" aria-hidden="true" id="candidatesModal">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content">
                        <form action="">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Search and Add Candidates</h5>
                                <!--<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button> -->
								 <button type="button" class="close" onclick="goToStep2AndCloseCandModal()">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="d-flex mb-3">
                                    <div class="input-group">
                                        <input id="candidateSearchId" type="text" class="form-control" placeholder="search candidate by name or email">
										<button class="btn btn-primary btn-sm" type="button" onclick="getCandidates()" style="width:100;color:white;" value="Search">
                                    </div>
                                </div>
								<div id="candidatesTableId">
									
								</div>
                            </div>
                            <div class="modal-footer">
                               <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
                               <button type="button" class="btn btn-secondary"  onclick="goToStep2AndCloseCandModal()">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
			
			<div class="modal fade bd-example-modal-lg add-candidates" tabindex="-1" role="dialog" aria-labelledby="myLargeModalCandidate" aria-hidden="true" id="campaignModal">
                <div class="modal-dialog modal-lg modal-dialog-centered">
                    <div class="modal-content">
                        <form action="">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Search and Add Campaign</h5>
                                <!--<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button> -->
								 <button type="button" class="close" onclick="closeCampaignModal()">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="d-flex mb-3">
                                    <div class="input-group">
                                        <input id="candidateSearchId" type="text" class="form-control" placeholder="search candidate by name or email">
										<button class="btn btn-primary btn-sm" type="button" onclick="getCandidates()" style="width:100;color:white;" value="Search">
                                    </div>
                                </div>
								<div id="campaignTableId">
									
								</div>
                            </div>
                            <div class="modal-footer">
                               <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> -->
                               <button type="button" class="btn btn-secondary"  onclick="closeCampaignModal()">Close</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
			
		  
        </div>
        <script>
            $('button.nav-bar, button.nav-bar-close').on('click', function () {
                $(this).closest('.container-fluid').find('nav').toggleClass('open');
                $('.drop-down-bg').toggleClass('open');
            });
            $('a.view-more').on('click', function () {
                var angle = $(this).find('.fa');
                if(angle.hasClass('fa-angle-down')) {
                    $(this).closest('nav').find('.more-nav').addClass('open');
                    $('.drop-down-bg').addClass('open');
                    angle.removeClass('fa-angle-down').addClass('fa-angle-up');
                } else {
                    $('.drop-down-bg').removeClass('open');
                    $(this).closest('nav').find('.more-nav').removeClass('open');
                    angle.addClass('fa-angle-down').removeClass('fa-angle-up');
                }
            });
            $('.drop-down-bg').on('click', function(){
                $(this).closest('body').find('.open').removeClass('open');
                if($('a.view-more i.fa').hasClass('fa-angle-up')) {
                    $('a.view-more i.fa').addClass('fa-angle-down').removeClass('fa-angle-up');
                }
            });
            $('.admin-view').on('click', function(){
                var options = $(this).closest('.actions').find('.options');
                if(options.hasClass('open')) {
                    options.removeClass('open');
                } else {
                    options.addClass('open');
                }
            });
            $('.form-steps a.steps-link').on('click', function(){
                $('#step-1, #step-2, #step-3, #step-4').addClass('d-none');
                $('.form-steps a.steps-link').removeClass('active');
                $(this).addClass('active');
                var $target = $(this).attr('href');
                $($target).removeClass('d-none');
            });
            $('.campaign-btn button.btn').on('click', function(){
                var $this = $(this),
                    $curval = $('.form-steps a.steps-link.active').attr('href'),
                    $current = parseInt($curval.slice(6,7)),
                    $target = 0;
                if('back' == $this.attr('data-val')) {
                    $target = $current - 1;
					
					if($target < 4){
						var button = document.getElementById('nextid');
						button.innerText = button.textContent = 'Next';
						
					}
					
					
                    if($target > 0) {
                        $('#step-1, #step-2, #step-3, #step-4').addClass('d-none');
                        $('#step-'+$target).removeClass('d-none');
                    } else {
                        return;
                    }
                } 
				else if('cancel' == $this.attr('data-val')){
					window.location = 'jobDescriptions';
				}
				else {
					var val = $this.attr('data-val');
                    $target = $current + 1;
					
					if($target == 2){
						var ret = goToStep2();
						
						if(ret == 'fail'){
							return;
						}
						
					}
					
					if($target == 3){
						var ret = goToStep3();
						
					}
					
					if($target == 4){
						goToStep4();
						getCampaign();
						var button = document.getElementById('nextid');
						button.innerText = button.textContent = 'Save';
					}
					
					
					
					
					
                    if($target <= 4) {
                        $('#step-1, #step-2, #step-3, #step-4').addClass('d-none');
                        $('#step-'+$target).removeClass('d-none');
                    } else {
                        return;
                    }
                }
				
				
				
				
                $('.form-steps a.steps-link').removeClass('active');
                $('.form-steps a.steps-link[href="#step-'+$target+'"]').addClass('active');
            });
			
			
			function gotoJobDesc(){
				
				window.location = 'jobDescriptions';
			}
			
			function goToStep3(){
				
// 				alert("...");
				   $.get("showRecruiters", function(data, status) {
					   console.log(data);
						$("#candidatesId").empty();
						$("#candidatesId").append(data);
					   
			      	});
			 }
				
 
			 
			
			
			function goToStep2AndCloseCandModal(){
				$("#candidatesModal").modal('hide');
				goToStep3();
			}
			
			function goToStep2AndCloseReviewModal(){
				$("#reviewersModal").modal('hide');
				goToStep3();
			}
			
			function step2(){
			  	
// 				$.get("goToStep2?campaignName="+campaignName+"&campaignDesc="+campaignDesc, function(data, status){
// 				   console.log(data);
					$("#campaignTests").empty();
// 					$("#campaignTests").append(data);
// 					$("#step2Modal").modal('hide');
// 					return "ok"
// 				});
			}
			function getCampaign() {
// 				alert("......")
				url = "showCampaign";
				
				$.get(url, function(data, status){
					console.log(data);
					$("#campaignId").empty();
					$("#campaignId").append(data);
				});

			}
			
			function goToStep2(){
				
						var name = document.getElementById("name").value;
			    		let formData = new FormData()
					    var d = $('#file')[0].files[0]
					
					    formData.append('file', d);
					    formData.append('name', name);
			        
					        $.ajax({
							            url: "goToJobStep2",
							            type: "POST",
							 			data: formData,
							            enctype: 'multipart/form-data',
							            processData: false,
							            contentType: false,
							            cache: false,
							            success: function (res) {
							                console.log(res);
							            },
							            error: function (err) {
							                console.error(err);
							            }
					        });
				 
 
			
			}
			
			function searchAndPopulaterRecruitersTable(search){
 					url = "searchAndPopulaterRecruitersTable";
				
					$.get(url, function(data, status){
						console.log(data);
						$("#candidatesTableId").empty();
						$("#candidatesTableId").append(data);
						$("#candidatesModal").modal('show');
					});
			}
			
			function closeCampaignModal() {
				$("#campaignModal").modal('hide');
				getCampaign();
			}
			
			function searchAndPopulaterCampaignTable(){
				url = "searchAndPopulaterCampaignTable";
				
				$.get(url, function(data, status){
					console.log(data);
					$("#campaignTableId").empty();
					$("#campaignTableId").append(data);
					$("#campaignModal").modal('show');
				});
				
			}
			
			function changeRecruiterCheckbox(checkboxElem, id){
				 if (checkboxElem.checked) {
 					$.get("selectRecruiterForJob?cid="+checkboxElem.id, function(data, status){
						   console.log(data);
						notify("Recruiter is selected for the job ");
						var cs = document.getElementById("T"+checkboxElem.id).getElementsByTagName("td");
							for (var i = 0; i < cs.length; i++) {
								cs[i].style.backgroundColor = "lightblue";
							}
						});
 						
				  } else {
					$.get("unselectRecruiterForJob?cid="+checkboxElem.id, function(data, status){
						   console.log(data);
						notify("Recruiter is selected for the job ");
						var cs = document.getElementById("T"+checkboxElem.id).getElementsByTagName("td");
						notify("Recruiter is de-selected for the job ");
							for (var i = 0; i < cs.length; i++) {
								cs[i].style.backgroundColor = "";
							}
						});
				  }
				
			}
			
			function selectCampaign(radioElem){
// 				alert(radioElem.id);
					$.get("selectCampaignForJob?cid="+radioElem.id, function(data, status){
						   console.log(data);
						notify("Campaign selected for the job ");
						});
				  }
				
			
			function goToStep4() {
				
			}
			 function saveJobDescription(){
				 var button = document.getElementById('nextid');
					
					if(button.innerText == 'Save' || button.textContent =='Save'){
						 window.location = 'saveJobDescription'; 
					}
			 }
		 
	 
			
			function notify(msg){
				var notification = 'Information';
				$(function() {
				    Swal.fire(
			       'Information',
			       msg,
			       'warning'
			    )
			});
			}
        </script>
    </body>
</html>