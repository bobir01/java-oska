import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "dobavit_polzovatel", urlPatterns = {"/dobavit_polzovatel"})
public class dobavit_polzovatel extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Administrator</title>"); 
            //style 
            out.println("<style type='text/css'>");
            out.println("body {font-family: Verdana, Geneva, sans-serif; margin: 0px; }");
            out.println(".tabletrtd{ background-color: #011C49;}");
            out.println(".header{text-align: center; color: #ddd; font-size: 20px; }");
            out.println("#headerdiv{width: 100%; height:120px; position: fixed; left: 0; top: 0; }");
            out.println("#conteiner{width: 100%;position:relative;margin: 0 auto;text-align:left;top: 125px;left: 0;"
                    + "border: 1px solid #sss;}");
            out.println("#leftmenu{width: 300px;position: fixed;top:125px;left:5px;border: 1px solid #011C49;border-radius: 8px 8px 8px 8px;"
                    + "padding: 15px;padding-left:0;background-color: #4682B4;min-height:400px;}");
            out.println("#leftmenu p{color:#001D3D;font-size: 16px;font-weight: bold;text-align: center;}");
            out.println(".menu {display: block;width: 285px;background-color:#4682B4;color:#E5E008;font-size: 14px;"
                    + "text-decoration: none;padding: 15px;font-weight: bold;border-top: 1px  dotted #fff}");
            out.println(".menu:hover {display: block;width: 278px;background-color:#011C49;color:#fff;font-size: 14px;"
                    + "text-decoration: none;padding: 15px;font-weight: bold;border-left: 7px solid #fff;}");
            out.println("#article{top:125px;margin-left:340px;margin-right:5px;border: 1px solid #011C49;"
                    + "border-radius: 8px 8px 8px 8px;padding: 15px;min-height:400px;}");
            out.println("#logouttd{width:218px;border-left: 1px solid #fff;color: #fff;font-size: 14px;padding-left:20px;}");
            out.println("</style>");
            //style
                    
            
            out.println("</head>");
            out.println("<body>");
            //out.println("");
            //HEADER qismi boshlanishi
            out.println("<div id='headerdiv'>");
            out.println("<table width='100%' border='0' cellpadding='0' cellspacing='0'>");
            out.println("<tr height='100px'>");
            out.println("<td bgcolor='#011C49'><p class='header'>Административной часть системы</p></td>");
            out.println("<td bgcolor='#011C49' id='logouttd'>avtorizatsiya");    
    
	
            out.println("</td></tr></table></div>");
            //HEADER oxiri
  
            //CONTAINER boshlanishi
            out.println("<div id='conteiner'>");
            //LEFT MENU boshi
            out.println("<div id='leftmenu'><p>Меню</p>");
            out.println("<a href='index.jsp' class='menu'>> Главная</a>");
            out.println("<a href='dobavit_administrator' class='menu'>> Добавить администратор</a>");
            out.println("<a href='dobavit_polzovatel' class='menu'>> Добавить ползователь</a>");
            out.println("<a href='udalit_polzovatel' class='menu'>> Удалить ползователь</a>");
            out.println("</div>");
            //ARTICLE boshi    
            out.println("<div id='article'>");

            
            
            

            out.println("</div>");
            //ARTICLE oxiri
            out.println("</div>");   
            //CONTAINER oxiri
            out.println("</body>");
            out.println("</html>");
        }catch (Exception e) {
            out.println(" ");
        } 
        finally {            
            out.close();
        }
    }
    Connection conn = null;

    public Connection getConnection(PrintWriter out) {
        if (conn == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbaskmo", "kudrat", "1910");
            } catch (Exception e) {
                out.println(e);
            }
        }
        return conn;
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
