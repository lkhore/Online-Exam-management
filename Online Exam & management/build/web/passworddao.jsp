
<%@include file="Secure.jsp"%>
<%@ page import="java.sql.*"%>
<%
     int one=0;
     String uid=(String)session.getAttribute("uid");
	String opwd=(String)request.getParameter("opwd");
        String upass=request.getParameter("pwd");
        
        
        Class.forName("com.mysql.jdbc.Driver");
     Connection connection;
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=(Statement)connection.createStatement();
        String post="student";
    
          String r="SELECT * FROM USER WHERE upass='"+opwd+"' AND uid='"+uid+"'";
           ResultSet rs1=st.executeQuery(r);
           if(rs1.next())
           {
               one=1;
           }
           
           else
            {
               %>
               <div style="text-align:center;padding:10px;">
               <script type="text/javascript">
//               var pcalt=document.getElementById('error');
//               pcalt.innerHTML="<font color='blue'> Contact Number or Email Address Alerady Registerd </font>";  
               alert('Old password not found');
                location = "password.jsp";
                </script>
              </div>
               <%
            }
	       if(one==1)
               {
		String sql="UPDATE USER SET upass='"+upass+"' WHERE uid='"+uid+"'";
                st.executeUpdate(sql);
               } 
               connection.close();                          
                               
                
                %>
                <div style="text-align:center;padding:10px;">
<script type="text/javascript">
 
  
  
 alert('Successfully password change ');
 location = "password.jsp";
  
</script>
                </div>