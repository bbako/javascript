<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>

<base href="resources/login/">
<title>Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--==============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>

				<form class="login100-form validate-form">
					<span class="login100-form-title"> Member Login </span>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input id="email" class="input100" type="text" name="email"
							placeholder="Email"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-envelope"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input id="pass" class="input100" type="password" name="pass"
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button id="loginBtn" class="login100-form-btn">Login</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1"> Forgot </span> <a class="txt2" href="#">
							Username / Password? </a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#"> Create your Account <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script>
	 "use strict";
	 
	 $(document).ready(function() {
		 
		 var input = $('.validate-input .input100');
			
		    $('#loginBtn').on('click',function(e){
		    	e.preventDefault();
		    	console.log("1111111111");
		    	
		    	  var check = true;
		  		
			        for(var i=0; i<input.length; i++) {
			            if(validate(input[i]) == false){
			                showValidate(input[i]);
			                check=false;
			            }
			        }
			
			      console.log(check);
			      
			      if(check){
			    	  nlist();
			      }
		    	
		    })
		
		    $('.validate-form .input100').each(function(){
		        $(this).focus(function(){
		           hideValidate(this);
		        });
		    });
		
		    function validate (input) {
		        if($(input).attr('type') == 'email' || $(input).attr('name') == 'email') {
		            if($(input).val().trim().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/) == null) {
		                return false;
		            }
		        }
		        else {
		            if($(input).val().trim() == ''){
		                return false;
		            }
		        }
		    }
		
		    function showValidate(input) {
		        var thisAlert = $(input).parent();
		
		        $(thisAlert).addClass('alert-validate');
		    }
		
		    function hideValidate(input) {
		        var thisAlert = $(input).parent();
		
		        $(thisAlert).removeClass('alert-validate');
		    }
		    
    		
    		/* 맨처음에 보여주는거  */
    		function nlist(){
    			
    			var email = $("#email").val();
    			var pass = $("#pass").val();
    			
    			 $.ajax({
    				  type: "POST",
    		    	  url: "/login",
    		 		  dataType: 'Json',
    		 		  data : {
    		 			 	email : email ,
    		 			 	password : pass
    			        	
    			        },
   					  success: function(re){
   						  
   						  console.log("ajax success")
   						  console.log(re);
   						  
   						  if(re.length >0){
   							  alert("login success");
   						  }else{
   							  alert("login fail");
   						  }
   						  
    		    	  }
    			 });
    		}
	});
	 
</script>

	<!--===============================================================================================-->
</body>
</html>