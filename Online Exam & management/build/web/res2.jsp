
<%@include file="Secure.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@page  import="java.util.Properties"%>
<%@page  import="javax.mail.Message"%>
<%@page  import="javax.mail.Session"%>
<%@page  import="javax.mail.Transport"%>
<%@page  import="javax.mail.internet.InternetAddress"%>
<%@page  import="javax.mail.internet.MimeMessage"%>
<%
   String uid=(String)session.getAttribute("uid");
     
   String email=null;

 Class.forName("com.mysql.jdbc.Driver");
       Connection  connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=connection.createStatement();
        
            String q,r;
             r="select count(quesno) from ques1";
             ResultSet rs1=st.executeQuery(r);
           
          int l=0,max=0;
           if(l==0)
           {
               if(rs1.next())
            {
                 max=rs1.getInt(1);
                      
            } 
             
             l++;
           }
    String id[]= new String[max];
   
    for(int i=0;i<max;i++){
      id[i]=request.getParameter("radio"+i);
      System.out.println(id[i]);
    }
    System.out.println(" ");System.out.println(" ");System.out.println(" ");System.out.println(" ");
    String str[]= new String[max];
    for(int j=0;j<max;j++){
      str[j]=request.getParameter("ans"+j);
      System.out.println(str[j]);
    }
    
    int count=0;
    //String answers[]=str.split(" ");
    for(int i=0;i<max;i++){
        
      if(id[i].equals(str[i])){

      count++;
      //System.out.println(id[i]);
      }
    }
     Statement st1=connection.createStatement();
    String t="update user set mark="+count+" where uid='"+uid+"'";
                st1.executeUpdate(t);
    
    
    
    
   
     String aemail=null,apass=null;
           String s="select * from mail";
           ResultSet rs2=st.executeQuery(s);
           if(rs2.next())
           {
                   aemail=rs2.getString(1); 
                   apass=rs2.getString(2); 
           }
           
                   Statement st2=connection.createStatement();
    String u="select email from user where uid='"+uid+"'";
    
   ResultSet rs3=st2.executeQuery(u);
   
   
   
   if(rs3.next())
    {
        email=rs3.getString(1);
   }
    
    
        try{           
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
        message.setSubject("Result ExamBlog");
        message.setText("this is the Result from EXamBlog,Result=  "+count);
        Transport transport = session1.getTransport("smtp");
        transport.connect(host, from, pass);
        transport.sendMessage(message, message.getAllRecipients());
        transport.close();
               }catch(Exception e){System.out.println(e);
               %>
               <div style="text-align:center;padding:10px;">
               <script type="text/javascript">
                  alert("due to some mail problem");
                location = "student.jsp";
               </script>
                </div>
<%
               }
   %>

<div style="text-align:center;padding:10px;">
<script type="text/javascript">
 alert("Your "+<%=count%>+" answers are correct");
 location = "student.jsp";
</script>
</div>