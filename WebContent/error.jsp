<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>Failed!!</title>  
       <style> 
       body{text-align:center} 
       </style>
  </head> 
  <body>
  <% String str="Login failed!!!";
  		if(session.getAttribute("inOrOut").equals("Regist"))
  			str="Regist failed!! The username or email is exist!!! ";
   %>
   <font color="red" size="5"> <%=str%> <br>
  
    <a href="register.jsp">Regist</a>
    <a href="index.jsp">69School</a>
     </font>
  </body>
</html>
