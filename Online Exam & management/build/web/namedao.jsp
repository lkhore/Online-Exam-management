<%@include file="Secure.jsp"%>
<%@ page import="java.sql.*"%>
<%

     String uid=(String)session.getAttribute("uid");
	String unm=(String)request.getParameter("user"); 
        try{
      Class.forName("com.mysql.jdbc.Driver");
  Connection connection;
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=(Statement)connection.createStatement();
		
		String sql="UPDATE USER SET unm='"+unm+"' WHERE uid='"+uid+"'";
                st.executeUpdate(sql);
                           }catch(Exception e){System.out.println(e);
                           }    
                
                %>
                <div style="text-align:center;padding:10px;">
<script type="text/javascript">
 
  
  
 alert('Successfully updated Name ');
 location = "name.jsp";
  
</script>
                </div>