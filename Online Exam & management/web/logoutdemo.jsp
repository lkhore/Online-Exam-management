<% 
         session.setAttribute("uid",null); 
	 session.invalidate(); 
        
       response.addHeader("cache-control","no-cache");
       //response.sendRedirect("index.html");
       
%>
<html>
    
    <head>
        <script>
         window.history.forward();
    //  location="index.html";
        </script>
        
<meta http-equiv="refresh" content="2; URL=http://localhost:8084/Online_Exam___management/index.jsp">
<meta name="keywords" content="automatic redirection">
<div id="templatemo_content">
    <p align="center">
        <img src="images/loading.gif" width="195" height="163"/></p></div>
    </head>
       
</html>