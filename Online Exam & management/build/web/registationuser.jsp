<%@page  import="java.sql.*"%>
<%@page  import="java.util.Properties"%>
<%@page  import="javax.mail.Message"%>
<%@page  import="javax.mail.Session"%>
<%@page  import="javax.mail.Transport"%>
<%@page  import="javax.mail.internet.InternetAddress"%>
<%@page  import="javax.mail.internet.MimeMessage"%>
<%
       String unm=request.getParameter("user");
        String upass=request.getParameter("pwd");
        String adrs=request.getParameter("name");
       String email=request.getParameter("email");
       String sex=request.getParameter("group1");   
       String contact=request.getParameter("ph_no");
       try{
     Class.forName("com.mysql.jdbc.Driver");
  Connection connection;
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=(Statement)connection.createStatement();
        String post="student";
     //String q="insert into user(unm,upass,post,adrs,email,sex,contact) values('"+"lkhore"+"','"+"123"+"','"+"student"+"','"+"indore"+"','"+"lkhore6@gmail.com"+"','"+"MALE"+"',"+"9999999999"+")";
      String q="insert into user(unm,upass,post,adrs,email,sex,contact) values('"+unm+"','"+upass+"','"+post+"','"+adrs+"','"+email+"','"+sex+"','"+contact+"')";
      st.executeUpdate(q);
           String r="select uid,upass from user where email='"+email+"'";
           ResultSet rs1=st.executeQuery(r);
           
          int l=0;
          int uid=0;
          String upass1=null;
            if(rs1.next())
            {
                 uid=rs1.getInt(1);
                 upass1=rs1.getString(2);
                      
            } 
          System.out.println("userid="+uid);
            
          String aemail=null,apass=null;
           String s="select * from mail";
           ResultSet rs2=st.executeQuery(s);
           if(rs2.next())
           {
                   aemail=rs2.getString(1); 
                   apass=rs2.getString(2); 
           }
           
                  
                   
         String host = "smtp.gmail.com";
        String from = aemail;//Enter ur Username
        String pass = apass; //Enter ur Password
        Properties props = System.getProperties();
        props.put("mail.smtp.starttls.enable","true"); // added this line
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.user", from);
        props.put("mail.smtp.password", pass);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
//Following id belong to me but u can add Receivers?s id to Directly send the mail
        String[] to = {email}; // added this line
        Session session1 = Session.getDefaultInstance(props, null);
        MimeMessage message = new MimeMessage(session1);
        message.setFrom(new InternetAddress(from));
        InternetAddress[] toAddress = new InternetAddress[to.length];
// To get the array of addresses
        for( int i=0; i < to.length; i++ ) { // changed from a while loop
        toAddress[i] = new InternetAddress(to[i]);
        }
        System.out.println(Message.RecipientType.TO);
        for( int i=0; i < toAddress.length; i++) { // changed from a while loop
        message.addRecipient(Message.RecipientType.TO, toAddress[i]);
        }
        message.setSubject("Registration in online exam blog");
        message.setText("the UserId and Password from online exam,uid:"+uid+" ,password:"+upass1);
        Transport transport = session1.getTransport("smtp");
        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
        
        
        %>
       <body>
<div style="text-align:center;padding:10px;">
<script type="text/javascript">
 
 alert('Registered Successufully please check email address for userid');
 location = "register.html";
  
</script>
</div>
</body>
       <%   
  connection.close();
   }catch(Exception e){
       System.out.println(e);
       %>
       
<div style="text-align:center;padding:10px;">
<script type="text/javascript">
    alert('Contact Number or Email Address Alerady Registered');
 location = "register.html";
    
</script>
</div>

<%
    }
%>