<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>  
<%@ taglib prefix="s" uri="/struts-tags"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  


<!DOCTYPE html>
<!--[if IE 8 ]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9 ]> <html lang="en" class="ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />


<title>Register</title>


<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<![endif]-->

<link href="css/normalize.css" rel="stylesheet"/>
<link href="css/jquery-ui.css" rel="stylesheet"/>
<link href="css/jquery.idealforms.min.css" rel="stylesheet" media="screen"/>

<style type="text/css">
body{font:normal 15px/1.5 Arial, Helvetica, Free Sans, sans-serif;color: #222;background:url(pattern.png);overflow-y:scroll;padding:60px 0 0 0;}
#my-form{width:755px;margin:0 auto;border:1px solid #ccc;padding:3em;border-radius:3px;box-shadow:0 0 2px rgba(0,0,0,.2);}
#comments{width:350px;height:100px;}
</style>

</head>
<body>


<div class="row">

  <div class="eightcol last">

    <!-- Begin Form -->

      <h1 align="center">Register</h1>
       <s:form  id="my-form" action="regist" method="post">  
        <div> <label>Name：</label>
         <input type="text" id="username" name="user.name" name="username" >
        </div>
        <div>
            <label>Password：</label>
            <input type="password" id="pass" name="user.password"  >
        </div>
        
        <div>
            <label>Confirm：</label>
            <input type="password" id="confirm" name="confirmpass" onkeyup="f()"/><label id="label1"></label>
        </div>
        
        <div>
            <label>Email：</label>
            <input type="text" data-ideal="required email" name="user.email">
        </div>

       <div >
            <label>StudentId：</label>
            <input id="stuid" type="tel" name="user.id">
        </div>
        
        <div >
            <label>Cellphone：</label>
            <input id="phone" type="tel" name="user.phone" >
        </div>
 

        <div>
            <button type="submit" >Submit</button>
            <button id="reset" type="button">Reset</button>
        </div>
    </s:form>

    <!-- End Form -->

  </div>

</div>


<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/jquery-ui.min.js"></script>
<script type="text/javascript" src="js/jquery.idealforms.js"></script>

<script type="text/javascript">
function f(){
	var password2=document.getElementById("confirm");
	var password=document.getElementById("pass");
	if(password2.value!=password.value){
	document.getElementById("label1").innerHTML="Please enter same password";
	}
	else
	{
	    document.getElementById("label1").innerHTML="";
	}
	}


var options = {

	onFail: function(){
		alert( $myform.getInvalid().length +' invalid fields.' )
	},

	inputs: {
		'user.password': {
			filters: 'required pass',
		},
	//	'confirmpass':{
     //       filters: 'required equalto:pass',
		//	},
		'user.name': {
			filters: 'required username',
			data: {
			//ajax: { url:'validate.php' }
			}
		},
		'user.phone':{
             filters: 'phone',
			},
		'user.id':{
   			 filters: 'required studentId',
			},

	}
	
};

var $myform = $('#my-form').idealforms(options).data('idealforms');

$('#reset').click(function(){
	$myform.reset().fresh().focusFirst()
});

$myform.focusFirst();
</script>


<div style="text-align:center;">
<p><a href="index.jsp" title="69School" target="_blank">69School</a></p>
</div>
</body>
</html>