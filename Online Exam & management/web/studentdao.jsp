
<%@include file="Secure.jsp"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<%
   //ArrayList a=new ArrayList();
    int ans;
    int flag=0,g=9;
    int e=10,j=0;
    int marks=0;
    int que=0,p[];
    int max=0,k=0,l=0,m=0;
    int max1,n=0;
    String unm1;
    int h[];
    
    int o[]={3,1,2,4,5,6};
    int f[]=new int[50];
    String ques="",ans1="",ans2="",ans3="",ans4="";
	 Class.forName("com.mysql.jdbc.Driver");
    
        Connection connection;
        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
        Statement st=(Statement)connection.createStatement();
       
            String q,r;
             r="select count(quesno) from ques1";
             ResultSet rs1=st.executeQuery(r);
             String message=request.getParameter("mess");
          // System.out.println("max="+message);
          
//           if(l==0)
//           {
//               if(rs1.next())
//            {
//                 max=rs1.getInt(1);
//               o=new int[max];   //System.out.println("max="+max);   
//            } 
//               
//           //    
//             for(int i=1;i<=max;i++)       
//             {
//                 
//            // a.add(i);
//			 o[i]=i;
//                 
//             }
////             Collections.shuffle(a);
////             for(int j=0;j<=max-1;j++)
////              {
////                  o[j]=(int)a.get(j);
////////              }
//////             
//             l++;
//           }
//          
                           System.out.println("m="+m);   
                  q="select * from ques1 where quesno="+o[m];
                  
                    ResultSet rs=st.executeQuery(q);
            
                    if(rs.next())
                    {
						/*
                         jTextArea1.setText(rs.getString(1));
                    jRadioButton1.setText(rs.getString(2));
                    jRadioButton2.setText(rs.getString(3));
                    jRadioButton3.setText(rs.getString(4));
                    jRadioButton4.setText(rs.getString(5));
              
                    }*/
                        ans=rs.getInt(6);
                        ques=rs.getString(1);
                        ans1=rs.getString(2);
                        ans2=rs.getString(3);
                        ans3=rs.getString(4);
                        ans4=rs.getString(5);
                           // System.out.println(rs.getString(1));
                                             
//                    System.out.println(ques); 
//   System.out.println(ques);   
//System.out.println(ans1); 
//System.out.println(ans2); 
//System.out.println(ans3); 
//System.out.println(ans4);
                 
                         
    }                    

%>