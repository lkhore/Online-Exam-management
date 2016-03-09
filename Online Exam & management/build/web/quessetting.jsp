<%@include file="Secure.jsp"%>
<%@ page import="java.sql.*"%>
<%

     String uid=(String)session.getAttribute("uid");


%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Press Blog Theme - Gallery</title>
<meta name="keywords" content="press blog theme, gallery, free css template, blogger, templatemo" />
<meta name="description" content="Press Theme Gallery Page - Free Blog Template for everyone" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<!--////// CHOOSE ONE OF THE 3 PIROBOX STYLES  \\\\\\\-->
<link href="css_pirobox/white/style.css" media="screen" title="shadow" rel="stylesheet" type="text/css" />
<!--<link href="css_pirobox/white/style.css" media="screen" title="white" rel="stylesheet" type="text/css" />
<link href="css_pirobox/black/style.css" media="screen" title="black" rel="stylesheet" type="text/css" />-->
<!--////// END  \\\\\\\-->

<!--////// INCLUDE THE JS AND PIROBOX OPTION IN YOUR HEADER  \\\\\\\-->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/piroBox.1_2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox({
			my_speed: 600, //animation speed
			bg_alpha: 0.5, //background opacity
			radius: 4, //caption rounded corner
			scrollImage : false, // true == image follows the page, false == image remains in the same open position
			pirobox_next : 'piro_next', // Nav buttons -> piro_next == inside piroBox , piro_next_out == outside piroBox
			pirobox_prev : 'piro_prev',// Nav buttons -> piro_prev == inside piroBox , piro_prev_out == outside piroBox
			close_all : '.piro_close',// add class .piro_overlay(with comma)if you want overlay click close piroBox
			slideShow : 'slideshow', // just delete slideshow between '' if you don't want it.
			slideSpeed : 4 //slideshow duration in seconds(3 to 6 Recommended)
	});
});



</script>

      
<script type="text/javascript">
     function ArrayShuffle(a) {
  var d,
  c,
  b = a.length;
   while (b) {
    c = Math.floor(Math.random() * b);
    d = a[--b];
    a[b] = a[c];
    a[c] = d
   }
   return a;
}

function one(n)
{
 var h= new Array();
 var k=1;
 var j =new Array();
 for(var i=0;i<=n-1;i++)
  {  
       j[i]=k;
       k++
 }
 
 h=ArrayShuffle(j); 
 
 
    
     return h;
         
       }     
</script>
<link href="css/svwp_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.slideViewerPro.1.0.js" type="text/javascript"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<!-- Optional plugins  -->
<script src="js/jquery.timers.js" type="text/javascript"></script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>




</head>

<body>      
<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title">
            <h1><a href="home1.jsp" target="_parent">
            <img src="images/templatemo_logo.png" alt="logo" width="230" height="41" /></a></h1>
            <table width="906" border="0">
              <tr>
                <td width="896"><table width="892" border="0">
                  <tr>
                    <td width="41">&nbsp;</td>
                    <td width="41">&nbsp;</td>
                    <td width="41">&nbsp;</td>
                    <td width="41">&nbsp;</td>
                    <td width="41">&nbsp;</td>
                    <td width="479">&nbsp;</td>
                    <td width="93"><%=uid%></td>
                    <td width="81"><a href="logoutdemo.jsp">LOGOUT</a></td>
                  </tr>
                </table></td>
              </tr>
            </table>
      	</div> <!-- end of site_title -->
        
        <div id="templatemo_menu">
             <ul>
                <li><a href="faculty.jsp">Home</a></li>   
               
                <li><a href="quessetting.jsp" class="current" >QuestionSetting</a></li>
                
                <li><a href="#">Profile Setting</a></li>
                 
            </ul>  	
        </div> <!-- end of templatemo_menu -->
    
    </div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_middle_wrapper">
	<div id="templatemo_middle">
    	
        <div id="templatemo_content">
        
           
            	
                <form method="post" action="res2.jsp">
  <table width="1018" border="3">
  <tr>
    <td width="52">
      <%
 Class.forName("com.mysql.jdbc.Driver");
    
        Connection connection;
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=(Statement)connection.createStatement();
       
            String q,r;
             q="select * from ques1";
             ResultSet rs=st.executeQuery(q);
int i=0,j=1;
while(rs.next()){
%> &nbsp;
        <td width="52">
        
          <%=j%> &nbsp;</td>
        <td width="309">
          <textarea name="" cols="49" rows="2"><%=rs.getString(1)%></textarea>
        </td>
        <td width="313"><input type="text" name="ans<%=i%>" value="<%=rs.getString(6)%>" /></td>
     
        <td width="52">
          <input type="text" name="text<%=i%>"  value="<%=rs.getString(2)%>" /></td>
      
        <td width="309"><input type="radio" value="2" name="radio<%=i%>"/>
        <%=rs.getString(3)%></td>
       <td width="313"><input type="radio" value="3" name="radio<%=i%>"/>
        <%=rs.getString(4)%></td>
      
    
  
      
        <td width="312"><input type="radio" value="4" name="radio<%=i%>"/>
        <%=rs.getString(5)%></td>
      
      <tr>
        <td width="52"> <%
i++;j++;
}
%>&nbsp;</td>
      </tr>
   
    
    
      <tr>
        <td width="52"><input type="submit" value="submit">
       
      </tr>
    </td>
  </tr>
</table>

    
  </form>
         
                    
        </div> <!-- end of templatemo_content -->

        <div class="cleaner"></div>    
    </div> <!-- end of templatemo_content -->
    
    <div id="templatemo_footer">
    
        <div class="col_w210">
            <h4>Follow Us</h4>
            <p>Cras a volutpat lacus. Ut nisi metus, lobortis vel egestas at, condimentum.<a href="aboutus.html"></a></p>
            
            <ul id="social_box">
                <li><a href="#">
                <img src="images/facebook.png" alt="facebook" width="48" height="48" /></a></li>
                <li><a href="#">
                <img src="images/twitter.png" alt="twitter" width="48" height="48" /></a></li>
                <li><a href="#">
                <img src="images/linkedin.png" alt="linkin" width="48" height="48" /></a></li>
                <li><a href="#">
                <img src="images/technorati.png" alt="technorati" width="48" height="48" /></a></li>
                <li><a href="#">
                <img src="images/myspace.png" alt="myspace" width="48" height="48" /></a></li>                
            </ul>
            
        </div>
        
        <div class="col_w210">
            <h4>Our Pages</h4>
            <ul>
               <ul>
                <li><a href="home1.jsp">Home</a></li>
                <li><a href="about1.jsp">About Us</a></li>
                <li><a href="register1.jsp">Register</a></li>
                <li><a href="blog_post1.jsp">Blog Post</a></li>
                <li><a href="contact1.jsp">Contact Us</a></li>
                <li><a href="contact1.jsp" class="last">Help Desk</a></li>
            </ul>
            </ul>  
 
        </div>
        
        <div class="col_w210">
            <h4>Partners</h4>
            <ul>
                <li><a href="http://www.flashmo.com">Flash Templates</a></li>
                <li><a href="http://www.templatemo.com/page/1">Free CSS Template</a></li>
                <li><a href="http://www.koflash.com">Websites Gallery</a></li>
                <li><a href="http://www.flashmo.com/store">Premium Themes</a></li>
            </ul>    
 
        </div>
        <!--
        <div class="col_w210 col_last">
            <h4>Links</h4>
            <ul>
                <li><a href="#">Quisque sed mauris</a></li>
                <li><a href="#">Aliquam quis mi</a></li>
                <li><a href="#">Vestibulum posuere</a></li>
                <li><a href="#">Consectetur adipiscing</a></li>
            </ul>    
 
        </div>
        -->
        
        <div class="cleaner"></div>
    </div> <!-- end of footer -->
    
    <div id="templatemo_copyright">
    Copyright © 2048 <a href="#">ExamBlog.com</a></div>
   
</div> <!-- end of templatemo_content_wrapper -->

</body>
</html>