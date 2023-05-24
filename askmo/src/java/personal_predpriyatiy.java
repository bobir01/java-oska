
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "personal_predpriyatiy", urlPatterns = {"/personal_predpriyatiy"})
public class personal_predpriyatiy extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
        
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Персонал всех предприятий</title>");  
            out.println("</head>");
            //style boshi
            out.println("<style>");
            out.println("body{margin: 0;background-color: #F8F9FA;}");
            out.println("#maintable{border: none;width: 100%;}");
            out.println(".logotip{width: auto;height: auto;border: 1px solid #CCCCCC;margin: 5px;background-color: #00A8D3;}");
            out.println(".logotip p{font-family: Arial, Helvetica, sans-serif;font-size: 16px;font-weight: bold;text-align: center;}");
            out.println(".aaa{font-size: 14px;text-decoration: none;font-family: Arial, Helvetica, sans-serif;color: #f5f5f5;"
                    + "display: block;padding: 15px 0 15px 0;border: none;background-color: #3969AA;font-weight: bold;}");
            out.println(".aaa:hover{font-size: 14px;text-decoration: none;font-family: Arial, Helvetica, sans-serif;"
                    + "color: #fff;display: block;padding: 15px 0 15px 0;border: none;background-color: #448BCA;font-weight: bold;}");
            out.println(".left{margin: 5px 0 5px 5px;border: 1px solid #ccc;width: 248px;position: absolute;top: 70px;"
                    + "background-color: #F8F8F8;padding: 20px 0px 20px 0px; min-height:450px;}");
            out.println(".conteiner{margin: 11px 5px 5px 265px;border: 1px solid #ccc;position: relative;width: auto;"
                    + "min-width: 500px;background-color: #F8F8F8;padding: 20px; min-height:450px;font-family:Verdana;}");
            out.println(".ssilka {font-weight: normal; font-size:12px; color:#333; font-family: 'PT Serif', Verdana, Tahoma; "
                    + "text-decoration: none; display:block; border-bottom: 1px dotted #333; padding:10px 0 10px 5px;"
                    + "}");
            out.println(".ssilka:hover {font-weight: normal; font-size:12px; color:#333; font-family: 'PT Serif', Verdana, Tahoma; "
                    + "text-decoration: none; display:block; border-bottom: 1px dotted #333; padding:10px 0 10px 5px;"
                    + "background-color: #efefef;}");
            out.println("#tdaa {border: 1px solid #d0d0d0; background-color: #EEEDEB;}");
            out.println("#tdab {border-top: 1px solid #d0d0d0; border-bottom: 1px solid #d0d0d0; border-right: 1px solid #d0d0d0; background-color: #EEEDEB;}");
            out.println("#tdaa, #tdab {color: #666; font-size:14px; font-family: Verdana, Tahoma, Geneva; font-weight:bold;}"); 
            out.println("#tdba, #tdbb {color: #666; font-size:14px; font-family: Verdana, Tahoma, Geneva; padding-left: 20px;}");
            out.println("#tdba {border-left:1px solid #d0d0d0; border-bottom:1px solid #d0d0d0; border-right:1px solid #d0d0d0;}");
            out.println("#tdbb {border-right:1px solid #d0d0d0; border-bottom:1px solid #d0d0d0;}");
            out.println(".conteiner p{ font-size:16px; color:#666;}");
            
            out.println("</style>");
            
            //style tugadi
            //body boshi
            out.println("<body>");
            out.println("<table id='maintable' cellpadding='0' cellspacing='0'>");
            out.println("<tr><td height='50px' width='260px'>");
            out.println("<div class='logotip'><p>АС КМО</p></div></td>");
            out.println("<td>");
            out.println("<table width='100%' height='100%' border='0' cellpadding='0' cellspacing='5'>");
            out.println("<tr align='center'>");
            out.println("<td width='33%'><a href='osmotry' class='aaa'>Комиссионные осмотры станций</a></td>");
            out.println("<td width='33%'><a href='otchety' class='aaa'>Справочно-аналитические отчеты</a></td>");
            out.println("<td width='33%'><a href='spravka' class='aaa'>Нормативно-справочная информация</a></td>");
            out.println("</tr></table></td></tr></table>");
            //top menu tugadi
            
            //left menu boshlanishi
            out.println("<div class='left'>");
            
            out.println("<a href='personal_predpriyatiy' class='ssilka'>Персонал всех предприятий</a>"); 
            out.println("<a href='klassifikator_stansiy' class='ssilka'>Классификатор станций</a>");
            out.println("<a href='klassifikator_predpriyatiy' class='ssilka'>Классификатор предприятий</a>");
            out.println("<a href='obslujivanie_stansiy' class='ssilka'>Обслуживание станций предприятиями</a>");
            out.println("<a href='klassifikator_neispravnostey' class='ssilka'>Классификатор видов неисправностей</a>");
            
            
            out.println("</div>");
            //left menu tugadi
            //conteyner boshi-------------------------------------------------------------------------------
            out.println("<div class='conteiner' align='center'>");
            
                    out.println("<p>Персонал предприятий</p>");
           {

            Statement st2=getConnection(out).createStatement();   
            ResultSet rs2=st2.executeQuery("select * from shtat sh inner join (predpriyatie p inner join doljnost d) on sh.doljnost=d.idDoljnost and sh.idPredpriyatie=p.id ORDER BY sh.idPredpriyatie ASC");
            out.println("<table border='0' cellspacing='0' cellpadding='3' width='90%'>");
                    out.println("<tr align='center'>");
                    out.println("<td id='tdaa'>Предприятие</td>");
                    out.println("<td id='tdab'>Должность</td>");
                    out.println("<td id='tdab'>Фамилия</td>");
                    out.println("<td id='tdab'>Имя</td>");
                    out.println("<td id='tdab'>Отчество</td>");
                    out.println("</tr>");
               while (rs2.next()) {    
                    {
                    out.println("<tr>");
                    out.println("<td id='tdba'>" + rs2.getString("p.namepredpriyatie") + "</td>");
                    out.println("<td id='tdbb'>" + rs2.getString("d.nameDoljnost") + "</td>");
                    out.println("<td id='tdbb'>" + rs2.getString("sh.family") + "</td>");
                    out.println("<td id='tdbb'>" + rs2.getString("sh.name") + "</td>");
                    out.println("<td id='tdbb'>" + rs2.getString("sh.lastname") + "</td>");
                    out.println("</tr>");
                    }
                }
                
                out.println("</table>"); 
               
             }
            
            
            out.println("</div>");
            //conteyner tugadi
            out.println("</body>");
            out.println("</html>");
            
        }catch (Exception e) {
            out.println(e);
        }finally {            
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
