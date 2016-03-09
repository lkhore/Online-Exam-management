
<%@include file="Secure.jsp"%>
<%@ page import="java.sql.*"%>
<%
     int one=0;
     String uid=(String)session.getAttribute("uid");
	String oemail=request.getParameter("oemail");
        String email=request.getParameter("email");
        
        System.out.println("oemail="+oemail);
        Class.forName("com.mysql.jdbc.Driver");
     Connection connection;
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=(Statement)connection.createStatement();
        String post="student";
    
          String r="SELECT * FROM USER WHERE email='"+oemail+"' AND uid='"+uid+"'";
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
               alert('Old email Address not found');
                location = "email.jsp";
                </script>
              </div>
               <%
            }
	       if(one==1)
               {
                try
                                       {                          
		String sql="UPDATE USER SET email='"+email+"' WHERE uid='"+uid+"'";
                st.executeUpdate(sql);
                               }catch(Exception e){
                                  System.out.println(e);
                                %>
               <div style="text-align:center;padding:10px;">
               <script type="text/javascript">
//               var pcalt=document.getElementById('error');
//               pcalt.innerHTML="<font color='blue'> Contact Number or Email Address Alerady Registerd </font>";  
               alert('Email Address already registered');
                location = "email.jsp";
                </script>
              </div>
               <%
                         
                               
                               }
               } 
               connection.close();                          
                               
                
                %>
                <div style="text-align:center;padding:10px;">
<script type="text/javascript">
 
  
  
 alert('Successfully email address change ');
 location = "email.jsp";
  
</script>
                </div>