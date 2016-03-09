<%
          // response.addHeader("cache-control","no-cache");
String value1=(String)session.getAttribute("uid");

System.out.println("value1="+value1);
if(value1==null||value1=="null"||value1=="")
{
    response.sendRedirect("index.jsp");
}

if(session==null)
{
    response.sendRedirect("index.jsp");
}


%> 
