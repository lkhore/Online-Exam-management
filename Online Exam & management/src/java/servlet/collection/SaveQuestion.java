package servlet.collection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SaveQuestion extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter out = response.getWriter();
        try
        {
            String que=request.getParameter("que");
            String o1=request.getParameter("o1");
            String o2=request.getParameter("o2");
            String o3=request.getParameter("o3");
            String o4=request.getParameter("o4");
            int ans=Integer.parseInt(request.getParameter("ans"));
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineexam","root","root");
            Statement st=con.createStatement();
             String r;
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
            String s="insert into ques1(que,`01`,`02`,`03`,`04`,cor_ans,quesno) values(?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement=con.prepareCall(s);
            preparedStatement.setString(1,que);
            preparedStatement.setString(2,o1);
            preparedStatement.setString(3,o2);
            preparedStatement.setString(4,o3);
            preparedStatement.setString(5,o4);
            preparedStatement.setInt(6,ans);
            preparedStatement.setInt(7,(max+1));
            preparedStatement.executeUpdate();
            response.sendRedirect("quessetting1.jsp");
        }
        catch(Exception e)
        {
            out.print(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
