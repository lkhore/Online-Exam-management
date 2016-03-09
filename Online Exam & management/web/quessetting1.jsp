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
     function ArrayShuffle(a) 
     {
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
<script>
 function show()
 {
	 <%
	 	String show_status="";
	 %>
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

<script type="text/javascript" language="javascript">
    
   function addRow(tableID) 
{
    
            var table = document.getElementById(tableID);
            var rowCount = table.rows.length;
			//alert(rowCount);
            var row = table.insertRow(rowCount-1);
                          
            var r=rowCount-1;
           document.getElementById("mainrow").value =r;
		   
		   
            var cell0 = row.insertCell(0);
            var element0 = document.createElement("input");
            element0.type = "text";
            element0.name = "t"+r+"d1";
            element0.size = "3";
            cell0.appendChild(element0);
            
            var cell1 = row.insertCell(1);
            var element1 = document.createElement("textarea");
            element1.name = "t"+r+"d2";
            element1.cols = "26";
			element1.rows="1";
            cell1.appendChild(element1);
			
		
            var cell2 = row.insertCell(2);
            var element2 = document.createElement("input");
            element2.type = "text";
            element2.name = "t"+r+"d3";
            element2.size = "22";
            cell2.appendChild(element2);
            
			
			
            var cell3 = row.insertCell(3);
             var element3 = document.createElement("input");
            element3.type = "text";
            element3.name = "t"+r+"d4";
            element3.size = "22";
            cell3.appendChild(element3)
            
			
			
            var cell4 = row.insertCell(4);
            var element4 = document.createElement("input");
            element4.type = "text";
            element4.name = "t"+r+"d5";
            element4.size = "22";
            cell4.appendChild(element4);
            
			
			
            var cell5= row.insertCell(5);
            var element5 = document.createElement("input");
            element5.type = "text";
            element5.name = "t"+r+"d6";
            element5.size = "22";
            cell5.appendChild(element5);



            var cell6= row.insertCell(6);
            var element6= document.createElement("input");
            element6.type = "text";
            element6.name = "t"+r+"d7";
            element6.size = "10";
            cell6.appendChild(element6);

          /*  var cell9= row.insertCell(7);
            var element9 = document.createElement("input");
            element9.type = "text";
            element9.name = "t"+r+"d8";
            onblur="addRow('dataTable')";
            element9.size = "9";
            cell9.appendChild(element9);*/

         }
 
        function deleteRow(tableID) {
            try {
             var table = document.getElementById(tableID);
            var rowCount = table.rows.length;
            if(rowCount>3)
            {
            var row = table.deleteRow(rowCount-2);
             document.getElementById("mainrow").value =rowCount-3;
             }   
               }catch(e) {        alert(e);            }
     }

     
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
               
                <li><a href="quessetting1.jsp" class="current" >QuestionSetting</a></li>
                
                <li><a href="#">Profile Setting</a></li>
                 
            </ul>  	
        </div> <!-- end of templatemo_menu -->
    
    </div>
</div> <!-- end of templatemo_header -->
<div>

  <form id="form1" name="form1" method="post" action="SaveQuestion">
    <p>
      <label for="que">Question</label>
      <textarea name="que" id="que" cols="45" rows="5"></textarea>
      <label for="1"><br />
        Option1</label>
      <input type="text" name="o1" id="o1" />
      <label for="2">Option 2</label>
      <input type="text" name="o2" id="o2" />
      <label for="3">Option 3</label>
      <input type="text" name="o3" id="o3" />
      <label for="4">Option 4</label>
      <input type="text" name="o4" id="o4" />
    </p>
    <p>
      <label for="ans">Correct Option</label>
      <input type="text" name="ans" id="ans" />
    </p>
    <p>
      <input type="submit" name="save" id="save" value="SAVE" />
      <input type="reset" name="Reset" id="button" value="RESET" />
    </p>
  </form>

</div>
<div id="templatemo_middle_wrapper">
	<div id="templatemo_middle">
	  <div id="templatemo_content" style="width: 906; height: 280">
	  <form method="post" action="SaveQuestion">    
          <table width="177" border="1" style="border-width: 0">
                  <p>                              
                        <form name="field" onSubmit="SaveQuestion ;" action="SaveQuestion.java" method="post">
                            
                        <input type="remove" name="Deleate Question" id="resetdata" value="Delete Question" />
                      </span></td>
                                   
                        <td width="17" style="border-style: none; border-width: medium; "><span style="border-left-style: none; border-left-width: medium; border-top: medium none #111111; border-bottom: medium none #111111">
                        <input name="mainrow" id="mainrow" value="1" size="1" type="" readonly  style="float: left"  />
                      </span></td>
                    </tr>
          </table>
                  <table id="dataTable"  cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="878" height="77"" >
                    <tr>
                      <td style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" width="32" height="31" dir="ltr">
                      Sno.</td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" width="229" height="31" dir="ltr">
                      Question</td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" width="118" height="31" dir="ltr">
                      Choice 1</td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" width="128" height="31" dir="ltr">
                      Choice 2</td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" width="158" height="31" dir="ltr">
                      Choice 3</td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" width="153" height="31" dir="ltr">
                      Choice 4</td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:none; border-top-width:medium; border-bottom-style:solid; border-bottom-width:1" width="104" height="31" dir="ltr">
                      Correct Answer</td>
                    </tr>
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
                        String s="select * from ques1";
                        PreparedStatement preparedStatement=c.prepareCall(s);
                        ResultSet resultSet=preparedStatement.executeQuery();
                        while(resultSet.next())
                        {
                    %>
                    <tr>
                      <td style="border-left-style:none; border-left-width:medium; border-right-style:solid; border-right-width:1; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" width="32" height="23" dir="ltr">
                          <input type="text" name="T1" size="3" value="<%=resultSet.getString(7)%>" >
                      </td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" width="229" height="23" dir="ltr">
                      <textarea rows="7" name="S1" cols="50"><%=resultSet.getString(1)%></textarea></td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" width="118" height="23" dir="ltr">
                          <input type="text" name="T2" size="22" value="<%=resultSet.getString(2)%>"></td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" width="128" height="23" dir="ltr">
                          <input type="text" name="T3" size="22" value="<%=resultSet.getString(3)%>"></td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" width="158" height="23" dir="ltr">
                      <input type="text" name="T4" size="22" value="<%=resultSet.getString(4)%>" ></td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:solid; border-right-width:1; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" width="153" height="23" dir="ltr">
                      <input type="text" name="T5" size="22" value="<%=resultSet.getString(5)%>" ></td>
                      <td style="border-left-style:solid; border-left-width:1; border-right-style:none; border-right-width:medium; border-top-style:solid; border-top-width:1; border-bottom-style:none; border-bottom-width:medium" width="104" height="23" dir="ltr">
                          <input type="text" name="T6" size="10" value="<%=resultSet.getString(6)%>"></td>
                    </tr>
                    <%}%>
                 
                  </table>
                  <p>&nbsp;</p>
                  <p>&nbsp;</p>
                 
                 
                 
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