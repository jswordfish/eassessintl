<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.assessment.data.*, java.text.*, java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>eAssess</title>
      <link href="images/E-assess_E.png" rel="shortcut icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
	<link href="css/pnotify.custom.min.css" rel="stylesheet" type="text/css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="scripts/pnotify.custom.min.js"></script>
	<script type="text/javascript" src="scripts/custom.js"></script>
	
	<script type="text/javascript" src="scripts/jquery.base64.js"></script>
	
	 <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
	<script>
	function goback(){
	window.location = "goback";
	}
	</script>
	
	<style>
	.rightside .leftdivListTenant{
	    float: left;
	    width: 90%;
	}
	</style>
	
    </head>
    <body>

        <div class="maincontainer">            

            <div class="wrapper">
                <div class="row row-offcanvas row-offcanvas-left">
                    <!-- sidebar -->
                   <jsp:include page="side.jsp" /> 
                    <!-- /sidebar -->

                    <!-- main right col -->
                    <div class="column col-sm-10 col-xs-11" id="main" >

                        <div class="rightside" >

                            <div class="leftdivListTenant" >

                                <div class="topmenu text-right">
					  
					
					  <a href="signoff">Sign Off</a>
				
                                   
					  
                                </div>

                                <div class="questiontable" >
                                    <div class="questionheading">
                                        <div class="left">
                                            <h3><b>Data Upload Problems View </b></h3>
                                        </div>
                                       <br/><br/><br/> 
                                    </div>
									
								<c:choose>
								<c:when test="${results != null && results.size() > 0}">
									<div class="questiontablelist" >
									<table class="table" >
                                        <thead>
                                            <tr>
                                                <th><b>No</b></th>
                                                <th>Question</th>
												<th>Problem</th
											</tr>
										</thead>
															
										<tbody>
						                     
						                       <c:forEach  items="${results}" var="res" varStatus="loop">  
												
						                      	<tr>

										<td>${loop.count}</td>		
						                      		<td><c:out value="${res.questionText}"></c:out>  </td>
						                      		<td> ${res.questionProblem}</td>
						                      		
						                      	</tr>
						                      	</c:forEach>   
						                      </tbody>
                                           
                                        </tbody>
                                    </table>
									</div>
									
								</c:when>   
								<c:otherwise>
									<h5> <b>Data good to be uploaded.</b> </h5> 
									<h5> <b><i>{This utility tests the data on following parameters <br/>
									 1.	Validity of Company Id for all records<br/>
									2.	Correct Choices Entry in all records}</i></b><br/></h5>
								</c:otherwise>
							</c:choose>
								
								
								<c:if test = "${problem != null}">
								<div class="starttestinfo loginformnew">
									<h3>Problem - </h3><br/>
									 <h4>${problem}</h4>
								</div>
								</c:if>

                                </div>

                            </div>	

                           

                        </div>

                    </div>
                    <!-- /main -->
                </div>
            </div>
   
        </div>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>

     

        <script>
            /* off-canvas sidebar toggle */
            $('[data-toggle=offcanvas]').click(function () {
                $('.row-offcanvas').toggleClass('active');
                $('.collapse').toggleClass('in').toggleClass('hidden-xs').toggleClass('visible-xs');
            });
        </script>

        <script type="text/javascript">
            $(document).on('click', '#addanother', function () {
                var alphabet = nextString($("#maindivforaddmore").children().last().children().first().text());
                $("#maindivforaddmore").append("<div class='option'><span>" + alphabet + "</span><input type='text'><div class='choice'><input name='option' type='radio'><a href='javascript:void(0);' class='removenewdiv'>-</a></div></div>");
            });

            $(document).on('click', '.removenewdiv', function () {
                $(this).parent().parent().remove();
            });

            function nextString(str) {
                if (!str)
                    return 'A'  // return 'A' if str is empty or null

                let tail = ''
                let
                i = str.length - 1
                let
                char = str[i]
                // find the index of the first character from the right that is not a 'Z'
                while (char === 'Z' && i > 0) {
                    i--
                    char = str[i]
                    tail = 'A' + tail   // tail contains a string of 'A'
                }
                if (char === 'Z')   // the string was made only of 'Z'
                    return 'AA' + tail
                // increment the character that was not a 'Z'
                return str.slice(0, i) + String.fromCharCode(char.charCodeAt(0) + 1) + tail
            }

        </script>

        <script>
           
	    
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
		
		function confirmDelete(id) {
			id = btoa(id);
           (new PNotify({
		    title: 'Confirmation Needed',
		    text: 'Are you sure? Do you really want to delete this tenant. This is a non-recoverable option. This will delete the database/app & config folders for the application ?',
		    icon: 'glyphicon glyphicon-question-sign',
		    hide: false,
		    confirm: {
			confirm: true
		    },
		    buttons: {
			closer: false,
			sticker: false
		    },
		    history: {
			history: false
		    }
		})).get().on('pnotify.confirm', function() {
		    window.location = "deleteTenant?tenantId="+id;
		}).on('pnotify.cancel', function() {
		   
		});
        }
	
        </script>

	<c:if test="${msgtype != null}">
		 <script>
	 var notification = 'Information';
	 $(function(){
		 new PNotify({
	         title: notification,
	         text: '${message}',
	         type: '${msgtype}',
	         styling: 'bootstrap3',
	         hide: true
	     });
	 }); 	 
      </script>
</c:if>
	
    </body>
</html>
