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
})</script>
<script type="text/javascript">

function myValidation()
{
	
	var result;
        var result1; var result2;
  result=opassword();
  result1=password()&&result;
  result2=pass()&&result1;
 
  
   
  return result2;
}</script>
<script type="text/javascript">

        function opassword()
        {     var pawd=document.field.opwd.value;
              var palt=document.getElementById('opwd1');
               var pattern = /[^a-zA-Z0-9]/g
            if(!pawd.length=="")
            { 
			 if(pawd.length<4)
             {
               palt.innerHTML="<font color='red'>Weak Password !</font>";
               return false; 
             } 
             else if (pattern.test(pawd)) 
                 { palt.innerHTML="<font color='Blue'> Strong Password</font>";
              return true;} 
            }  
           else { palt.innerHTML="<font color='red'>*Enter Password</font>";
              return false;} 
               
        }
        function password()
        {     var pawd=document.field.pwd.value;
              var palt=document.getElementById('pwd1');
               var pattern = /[^a-zA-Z0-9]/g
            if(!pawd.length=="")
            { 
			 if(pawd.length<4)
             {
               palt.innerHTML="<font color='red'>Weak Password !</font>";
               return false; 
             } 
             else if (pattern.test(pawd)) 
                 { palt.innerHTML="<font color='Blue'> Strong Password</font>";
              return true;} 
            }  
           else { palt.innerHTML="<font color='red'>*Enter Password</font>";
              return false;} 
               
        }


function pass()
{
  var pawd1=document.getElementById('pwd');
  var pawdcon2=document.getElementById('pwd_con');
  var palt=document.getElementById('pwd1');
  var pcalt=document.getElementById('pwdcon1');
  
 if(pawdcon2.value.length===0)  {
    pcalt.innerHTML="<font color='red'> Invalid Password Cofirm </font>";
    
   return false;
    }
   
 else if(pawd1.value!==pawdcon2.value)
  {
    pcalt.innerHTML="";
    palt.innerHTML="<font color='red'> Password Mismatch</font>";
    return false;
  }else{
    palt.innerHTML="";
    pcalt.innerHTML="";
    return true;
  }
}



</script>




</head>

<body>      
<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title">
            <h1><a href="home1.jsp" target="_parent">
            <img src="images/templatemo_logo.png" alt="logo" /></a></h1>
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
                <li><a href="student.jsp">Home</a></li>   
               
                <li><a href="exam.jsp" >Attempt Exam</a></li>
                
                <li><a href="sprofile.jsp" class="current">Profile Setting</a></li>
                 
            </ul>  	
        </div> <!-- end of templatemo_menu -->
    
    </div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_middle_wrapper">
	<div id="templatemo_middle">
    	
        <div id="templatemo_content">
        
            <div class="content_box_wrapper">
            	<div class="content_box">
                <div class="content_box_wrapper">
                <div class="content_box">
                 <form name="field" onSubmit="return myValidation();" action="passworddao.jsp" method="post">
                   <table width="617" border="1">
  <tr>
    <td width="66">&nbsp;</td>
    <td width="272">&nbsp;</td>
    <td width="-1">&nbsp;</td>
    <td width="181">&nbsp;</td>
    <td width="65">&nbsp;</td>
  </tr><tr>
                        <td height="32">&nbsp;</td>
                        <td class="one">Old password</td>
                        <td>&nbsp;</td>
                        <td colspan="2">
                          <label for="textfield3"></label>
                          <input type="password" name="opwd" id="opwd" onkeyup="opassword();" size="20" /><span id=opwd1></span> 
                        </td>
                      </tr>
  <tr>
                        <td height="32">&nbsp;</td>
                        <td colspan="2" class="one">New password</td>
                        <td colspan="2">
                          <label for="textfield3"></label>
                          <input type="password" name="pwd" id="pwd" onkeyup="password();" size="20" /><span id=pwd1></span> 
                        </td>
                      </tr>
                      <tr>
                        <td height="34">&nbsp;</td>
                        <td colspan="2" class="one"> Confirm password</td>
                        <td colspan="2">
                          <label for="textfield4"></label>
                          <input type="password" name="pwd_con" id="pwd_con" onBlur='pass();' size="20" /><span id=pwdcon1></span>
                       </td>
                      </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="button" id="button" value="Submit" /></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

                 </form>
				</div>
			</div>
            	 </div> 
            	<!-- end of content_box -->
            </div> 
            <!-- end of content_box_wrapper -->
                    
        </div> <!-- end of templatemo_content -->
            
		<div id="templatmeo_sidebar">
        
        	<div class="content_box_wrapper">
                <div class="content_box">
                
                    <ul class="ads_125">
                    	<li><a href="http://www.templatemo.com/page/1" target="_parent">
                        <img src="images/templatemo_ads.jpg" alt="CSS Templates" width="125" height="125" /></a></li>
                        <li class="odd"><a href="#">
                        <img src="images/templatemo_ads.jpg" alt="banner" width="125" height="125" /></a></li>
                        <li class="last_row"><a href="#">
                        <img src="images/templatemo_ads.jpg" alt="banner" width="125" height="125" /></a></li>
                        <li class="odd last_row"><a href="#">
                        <img src="images/templatemo_ads.jpg" alt="banner" width="125" height="125" /></a></li>                     
                    </ul>
                	<div class="cleaner"></div>
                </div>
            </div>
            
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
            
            <div class="content_box_wrapper">
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
			</div>
            
        </div>
        
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