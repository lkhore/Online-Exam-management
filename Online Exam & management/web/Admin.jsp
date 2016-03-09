
<%@page  import="java.sql.*"%>
<head>
              <script>
                window.history.forward();
              </script>
</head>

<%
    String id=request.getParameter("uid");
        String pass=request.getParameter("upass");
        String btn=request.getParameter("B1");
       System.out.println(id);
       System.out.println(pass);
            
   Class.forName("com.mysql.jdbc.Driver");
    
        Connection connection;
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=(Statement)connection.createStatement();
        
        String q="select * from user where uid='"+id+"' and upass='"+pass+"'";
       
ResultSet rs=st.executeQuery(q);
           
boolean flag=false;
if(rs.next())        
{
           
       String level=rs.getString(4);
        String uid=rs.getString(1);
       System.out.println(level);
      // session.setAttribute("LEVEL", level);
       session.setAttribute("uid", uid);
       Cookie ck=new Cookie("TIGER", id);
       ck.setMaxAge(10000000);
       response.addCookie(ck);       
       
       
    
    if(level.equalsIgnoreCase("Admin"))
    {
        
        response.sendRedirect("admin1.jsp");
        
    }
   
    
}
else
{
    //out.println("Invalid id/password");
    flag=true;
    
}
%>

<%
Cookie ck[]=request.getCookies();
String s="";
if(ck!=null)
       {
for(int i=0;i<ck.length;i++)
       {
    if(ck[i].getName().equals("TIGER"))
        s=ck[i].getValue();
}
}

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Press Blog Theme - Free CSS Template</title>
<meta name="keywords" content="press blog theme, free css template, blogger, templatemo" />
<meta name="description" content="Press Theme - Free Blog Template for everyone" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

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
<!-- Optional plugins -->
<link href="EXAMNet_files/Style.css" rel="stylesheet" type="text/css"> 
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
 <script>
        function myValidation()
        {
            if(form1.uid.value.length===0)
			{
                alert('Please enter UserId ');
				return false;
			}
			else	
            if(form1.upass.value.length===0)
			{
                alert('password is req');
				return false;
			}
        }
	
        
        
    </script>
   
<body>

<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title">
            <h1><a href="index.jsp" target="_parent">
            <img src="images/templatemo_logo.png" alt="logo" width="230" height="41" /><span></span></a></h1>
      	</div> <!-- end of site_title -->
        
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="index.jsp" class="current">Home</a></li>   
                <li><a href="Admin.jsp">AdminLogin</a>
                </li>
                <li><a href="gallery.html">About Us</a>
                    
                </li>
                
                <li><a href="register.html">Register</a></li>
                 <li><a href="contact.html">Blog Post</a></li>
               <li><a href="contact.html">Contact Us</a></li>
               <li><a href="contact.html">Help Desk</a></li>
            </ul>    	
        </div> <!-- end of templatemo_menu -->
    
    </div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_middle_wrapper">
  <div id="templatemo_middle">
    	
        <div id="templatemo_content">
        
            <div class="content_box_wrapper">
                <div class="content_box">
                
                <div id="featuredslideshow">
                  <ul> 
                    <li><a href="" target="_parent">
                    	<img width="640" height="300" alt="" src="images/slideshow/01.jpg" /></a></li> 
                    <li><a href="" target="_parent">
                    	<img width="640" height="300" alt="" src="images/slideshow/02.jpg" /></a></li> 
                    <li><a href="" target="_parent">
                    	<img width="640" height="300" alt="" src="images/slideshow/03.jpg" /></a></li> 
                    <li><a href="" target="_parent">
                    	<img width="640" height="300" alt="" src="images/slideshow/04.jpg" /></a></li> 
                    <li><a href="" target="_parent">
                    	<img width="640" height="300" alt="" src="images/slideshow/05.jpg" /></a></li> 
                    <!-- eccetera --> 
                </ul> 
                </div>
     			<script type="text/javascript">
					 $("div#featuredslideshow").slideViewerPro({ 
					thumbs: 4,  
					thumbsPercentReduction: 15, 
					galBorderWidth: 1, 
					galBorderColor: "#CCCCCC", 
					thumbsTopMargin: 10, 
					thumbsRightMargin: 10, 
					thumbsBorderWidth: 2, 
					thumbsActiveBorderColor: "#993399", 
					thumbsActiveBorderOpacity: 1, 
					thumbsBorderOpacity: 1, 
					buttonsTextColor: "#333333", 
				
					autoslide: true,  
					typo: true 
					});  	
				</script>
 				<!--	leftButtonInner: "<img src='images/larw.gif' alt='left' />", 
					rightButtonInner: "<img src='images/rarw.gif' alt='right' />", 	-->
                
                </div>
            </div>
            
            <div class="content_box_wrapper">
            	<div class="content_box">
                
                	<div class="post_section">
            
                        <h2><a href="blog_post.html" class="col_w590">Aliquam lorem ante dapibus</a></h2>
        
                      <div class="post_meta"><strong>Date:</strong> November 28, 2048 | <strong>Author:</strong> <a href="#">Designer</a> | <a href="fullpost">128 comments</a></div>
                      <a href="" target="_parent">
                        <img src="images/templatemo_image_01.jpg" alt="free template" width="160" height="160" /></a>
                        <p>templatemo.com provides  free css templates for everyone.Press Blog Theme is one of them. There are 5 different pages included in this template. This template is absolutely free to download, edit and apply as any kind of CMS theme. Validate XHTML&amp; CSS. All photos are provided by photovaco.com </p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tempus egestas diam quis dapibus. Quisque sed mauris velit, a congue lorem. Aliquam quis mi sed libero dapibus iaculis a et mi.</p>
                      <div class="cleaner_h20"></div>
                      
                        <div class="category"><strong>Category: </strong><a href="#">Web Design</a>, <a href="#">Themes</a></div> 
                        <div class="btn_more float_r"><a href="blog_post.html">Read more</a></div>
                        <div class="cleaner"></div>
            
                    </div>
                
                </div> <!-- end of content_box -->
            </div> <!-- end of content_box_wrapper -->
            
            <div class="content_box_wrapper">
            	<div class="content_box">
                
                	<div class="post_section">
            
                        <h2><a href="blog_post.html">Aenean scelerisque tellus vitae</a></h2>
        
                      <div class="post_meta"><strong>Date:</strong> November 26, 2048| <strong>Author:</strong> <a href="#">Steven</a> | <a href="fullpost">256 comments</a></div>
                        
                    <a href="" target="_parent">
                        <img src="images/templatemo_image_02.jpg" alt="css template" width="160" height="160" /></a>
                        
                        <p>Cras id tortor nisl. Nullam ante diam, interdum sit amet sodales nec, mollis lobortis sapien. Vestibulum pharetra tortor vitae velit pretium rhoncus. Donec et purus velit, eget euismod risus. Integer consectetur enim eget diam tincidunt vehicula. Aenean scelerisque tellus vitae tortor placerat egestas. Ut volutpat erat nec <a href="#">mauris vestibulum</a> sit amet pharetra urna faucibus. Ut magna orci, varius eget ullamcorper ac, sodales id leo. In hac habitasse platea dictumst. Fusce venenatis consequat lacinia. Vivamus elit erat, tincidunt eget scelerisbdufyggbsdj\</p>
                            
                      <div class="cleaner_h20"></div>
                        <div class="category"><strong>Category: </strong><a href="#">Freebies</a>, <a href="#">Templates</a></div> <div class="btn_more float_r"><a href="blog_post.html">Read more</a></div>
                        <div class="cleaner"></div>
            
                    </div>
                
                </div> <!-- end of content_box -->
            </div> <!-- end of content_box_wrapper -->
        
        </div> 
      <p><!-- end of templatemo_content -->
          
    </p>
        <p>&nbsp;  </p>
        <form id="form1" name="form1" method="post" onsubmit="return myValidation();" action="">
          <table width="276" height="204" border="0">
            <tr>
              <td height="36" colspan="3" class="two"><div align="center"><span class="header">LOGIN SECTION </span></div></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
            
              <td colspan="3">
             <%if(btn!=null && flag==true)
            {%>
                           <font color="red" size="3">Invalid Id/Password</font>
                 <%}%>         
              </td>
              <td width="16">&nbsp;</td>
            </tr>
            <tr>
              <td width="88">USER ID</td>
              
              <td colspan="2"><label for="login"></label>
              <input type="text" name="uid" value="<%=s%>" size="20" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>PASSWORD</td>
              <td colspan="2"><label for="password"></label>
              <input type="password" name="upass" size="20" /></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td colspan="2">
              <input type="checkbox" name="check" id="check" value="ON" />
              <label for="check">Keep Me Sign In</label></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td height="39" colspan="2">
              <input type="submit" name="B1" id="login2" value="SignIn" style="float: right" /> </td>
              <td width="157">
              <p align="right"><a href="register.html"><font color="red" size="3">Register</font></a></td>
              <td></td>
            </tr>
            <tr>
              <td height="39" colspan="3">
              <p align="right"><a href="forget.html"><font color="red" size="3">Forget Password</font></a></td>
              <td></td>
            </tr>
          </table>
          <p>&nbsp;       </p>
        
        
        
        </form>
        <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
        <div id="templatmeo_sidebar">
		  <div class="content_box_wrapper">
              <div class="content_box">
            
                    <h4>Categories</h4>
                    <ul class="tmo_list">
                        <li><a href="index.html">Curabitur sed</a></li>
                        <li><a href="index.html">Praesent adipiscing</a></li>
                        <li><a href="index.html">Duis sed justo</a></li>
                        <li><a href="index.html">Mauris vulputate</a></li>
                        <li><a href="index.html">Nam auctor</a></li>
                        <li><a href="index.html">Aliquam quam</a></li>
                    </ul>
			</div>
		  </div>
            
            <!--div class="content_box_wrapper">
                <div class="content_box">
            
                    <h4>Recent comments</h4>
                    <div class="recent_comment_box">
                        <a href="#">Lorem ipsum dolor si</a>
                        <p>Maecenas tellus erat, dictum vel semper a, dapibus ac elit. Nunc rutrum pretium porta.</p>
                    </div>
                    
                    <div class="recent_comment_box">
                        <a href="#">Aenean feugiat mattis </a>
                        <p>Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu.</p>
                    </div>
                    
                    <div class="recent_comment_box">
                        <a href="#"> Lacus enim id lacinia in</a>
                        <p>Curabitur ullamcorper ultricies nisi.  Nam eget dui.   Etiam rhoncus.</p>
                    </div>
        		</div>
			</div-->
            
        </div>
        
        <div class="cleaner"></div>    
  </div> <!-- end of templatemo_content -->
    
    <div id="templatemo_footer">
    
        <div class="col_w210">
            <h4>Follow Us</h4>
            <p><a href="aboutus.html"></a></p>
            
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
        
        <!--div class="col_w210 col_last">
            <h4>Links</h4>
            <ul>
                <li><a href="#">Quisque sed mauris</a></li>
                <li><a href="#">Aliquam quis mi</a></li>
                <li><a href="#">Vestibulum posuere</a></li>
                <li><a href="#">Consectetur adipiscing</a></li>
            </ul>    
 
        </div-->
              <div class="cleaner"></div>
    </div> <!-- end of footer -->
        <div id="templatemo_copyright">
        Copyright © 2048 <a href="#">Your Company Name</a> | Designed by <a href="http://www.templatemo.com" target="_parent">Free CSS Templates</a>
    </div>
   </div> <!-- end of templatemo_content_wrapper -->
</body>
</html>