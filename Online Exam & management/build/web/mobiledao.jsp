
<%@include file="Secure.jsp"%>
<%@ page import="java.sql.*"%>
<%
     int one=0;
     String uid=(String)session.getAttribute("uid");
	String oph_no=request.getParameter("oph_no");
        String ph_no=request.getParameter("ph_no");
            
        Class.forName("com.mysql.jdbc.Driver");
     Connection connection;
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=(Statement)connection.createStatement();
      
    
          String r="SELECT * FROM USER WHERE contact='"+oph_no+"' AND uid='"+uid+"'";
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
               alert('Old mobile no. not found');
                location = "mobile.jsp";
                </script>
              </div>
               <%
            }
	       if(one==1)
               {
                try
                                       {                          
		String sql="UPDATE USER SET contact='"+ph_no+"' WHERE uid='"+uid+"'";
                st.executeUpdate(sql);
                               }catch(Exception e){
                                  System.out.println(e);
                                %>
               <div style="text-align:center;padding:10px;">
               <script type="text/javascript">
//               var pcalt=document.getElementById('error');
//               pcalt.innerHTML="<font color='blue'> Contact Number or Email Address Alerady Registerd </font>";  
               alert('Mobile no. already registered');
                location = "mobile.jsp";
                </script>
              </div>
               <%
                         
                               
                               }
               } 
               connection.close();                          
                               
                
                %>
                <div style="text-align:center;padding:10px;">
<script type="text/javascript">
 
  
  
 alert('Successfully mobile no. changed ');
 location = "mobile.jsp";
  
</script>
                </div>