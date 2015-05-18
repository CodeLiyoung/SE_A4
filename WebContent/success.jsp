<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>successfully</title>
       <meta http-equiv="refresh" content="1; url=index.jsp">
       <style> 
       body{text-align:center} 
       </style> 
  </head>
  <body>
  <% 
  String name = (String)session.getAttribute("name");
  if(name == null)
	  name="";
	  %>
  <font color="green" size="5"> <%= name %>  <%=session.getAttribute("inOrOut") %> successfully! <br>
   </font>
   <% if(session.getAttribute("inOrOut").equals("logout"))
	    session.removeAttribute("name");
        session.removeAttribute("inOrOut");
   %>
  </body>
</html>