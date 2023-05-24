
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "dobavit_akt", urlPatterns = {"/dobavit_akt"})
public class dobavit_akt extends HttpServlet {

    String stansiya;
    String nachaloproved;
    String okonproved;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            out.println("<html>");
            out.println("<head>");
            out.println("<title>Добавления акта осмотра</title>");
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
            out.println(".left{min-height:450px;margin: 5px 0 5px 5px;border: 1px solid #ccc;width: 238px;position: absolute;top: 70px;"
                    + "background-color: #F8F8F8;padding: 5px 5px 10px 5px;}");
            out.println(".conteiner{min-height:470px; margin: 11px 5px 5px 265px;border: 1px solid #ccc;position: relative;width: auto;"
                    + "min-width: 500px;background-color: #F8F8F8;padding: 0;}");
            out.println(".atopmenu{text-decoration:none; font-size:14px; font-family:Verdana; display:block; color:#444;"
                    + "background-color:#DEE1E2; padding:8px 5px; border:1px solid #CCCCCC;}");
            out.println(".atopmenu:hover{text-decoration:none; font-size:14px; font-family:Verdana; display:block; color:#fff;"
                    + "background-color:#bbb; padding:8px 5px; border:1px solid #555;}");
            out.println(".formtable{border-color:#f5f5f5; margin-bottom:20px;}");
            out.println(".formtable td{border-color:#f5f5f5;}");
            out.println(".divtable{padding-left:30px; text-align:right; width: 600px;}");
            out.println(".td1{background-color:#d0d0d0; font-family:Verdana; color:#333; font-size:14px;}");
            out.println(".td2{background-color:#f5f5f5;}");
            out.println(".dalee{background-color:#3969AA; display:block; border:1px solid #396999; text-decoration:none; width: 75px;"
                    + "font-family:Verdana; color:#fff; text-align:center; padding:5px;}");
            out.println(".dalee:hover{background-color:#05f; display:block; border:1px solid #396999; text-decoration:none; width: 75px;"
                    + "font-family:Verdana; color:#eee; text-align:center; padding:5px;}");
            
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
            out.println("<td width='33%'><a href='faces/welcomeJSF.jsp' class='aaa'>Нормативно-справочная информация</a></td>");
            out.println("</tr></table></td></tr></table>");
            //top menu tugadi

            //left menu boshlanishi------------------------------------------------
            out.println("<div class='left'>");
           

            out.println("</div>");
            //left menu tugadi-----------------------------------------------------
            //conteyner boshi---------------------------------------------------------------------------------------------------------------------------
            out.println("<div class='conteiner'>");

            out.println("<table border='0' cellpadding='0' cellspacing='3' width='100%' align='center'><tr align='center'>");
            out.println("<td><a href='dobavit_akt' class='atopmenu'>Добавить акт</a></td>");
            out.println("<td><a href='dobavit_sostav' class='atopmenu'>Состав комиссии</a></td>");
            out.println("<td><a href='dobavit_neispravnosti' class='atopmenu'>Добавить неисправности</a></td>");
            out.println("<td><a href='ustranenie_zamechaniya' class='atopmenu'>Устранение замечания</a></td>");
            out.println("<td><a href='kontrol_ustranenie' class='atopmenu'>Контроль устранения</a></td>");
            out.println("</tr></table>");


            //out.println("");
            out.println("<form id='form1' name='form1' method='get' action=''>");
            out.println("<div class='divtable'>");
            out.println("<h3 align='center'>Акт комиссионного осмотра</h3>");
            out.println("<table border='1' cellspacing='0' cellpadding='5' class='formtable'>");
            out.println("<tr><td width='250px' class='td1'>Станция</td>");
            out.println("<td width='350px' class='td2'>");
            out.println("<select name='aktrju' id='aktrju' onchange='javascript:form1.submit();' onselect='javascript:form1.submit();'>");
            Statement st1 = getConnection(out).createStatement();
            ResultSet rs1 = st1.executeQuery("select * from mtu order by idMTU");
            out.println("<option value=''> </option>");
            while (rs1.next()) {
                String s = rs1.getString(1);
                String s1 = rs1.getString(2);
                String sss = "";
                if (request.getParameter("aktrju") != null) {
                    sss = ((request.getParameter("aktrju").equals(s)) ? "selected=true" : "");
                }
                out.println("<option value='" + s + "' " + sss + ">" + s1 + "</option>");

            }
            out.println("</select>");
            st1.close();
            out.println("<select name='aktstansiya' id='aktstansiya' onchange='javascript:form1.submit();' onselect='javascript:form1.submit();'>");
            Statement st = getConnection(out).createStatement();
            String ss = request.getParameter("aktrju");
            ResultSet rs = st.executeQuery("select * from predpriyatie where idMTU='" + ss + "' and typePredpriyatie=1 order by namePredpriyatie");
            while (rs.next()) {
                String s = rs.getString("id");
                String s1 = rs.getString("namePredpriyatie");
                String sss1 = "";
                if (request.getParameter("aktstansiya") != null) {
                    sss1 = ((request.getParameter("aktstansiya").equals(s)) ? "selected=true" : "");
                }
                out.println("<option value='" + s + "' " + sss1 + ">" + s1 + "</option>");

            }
            stansiya = request.getParameter("aktstansiya");
            out.println("</select>");
            st.close();
            out.println("</td></tr>");
            out.println("<tr><td class='td1'>Тип осмотра станции</td>");
            out.println("<td class='td2'><select name='akttiposmotra' id='akttiposmotra'>");
            Statement st7 = getConnection(out).createStatement();
            ResultSet rs7 = st7.executeQuery("select * from tip_osmotr order by id ASC");
            while (rs7.next()) {
                String s = rs7.getString(1);
                String s1 = rs7.getString(2);
                out.println("<option value='" + s + "'>" + s1 + "</option>");
                out.println(" ");
            }
            st7.close();
            out.println("</select></td></tr>");
            out.println("<tr><td class='td1'>Председатель комиссии</td>");
            out.println(" <td class='td2'><select name='aktpredsedatel' id='aktpredsedatel'>");

            Statement st3 = getConnection(out).createStatement();
            String stan = request.getParameter("aktstansiya");
            ResultSet rs3 = st3.executeQuery("select * from shtat sh, doljnost d where sh.doljnost=d.idDoljnost and sh.idPredpriyatie='" + stan + "' and doljnost!=4");
            while (rs3.next()) {
                String s = rs3.getString("sh.idShtat");
                String s1 = rs3.getString("sh.family");
                String s2 = rs3.getString("sh.name");
                String s3 = rs3.getString("sh.lastname");
                String s4 = rs3.getString("d.nameDoljnost");
                out.println("<option value='" + s + "'>" + "(" + s4 + ") " + s1 + " " + s2 + ". " + s3 + "." + "</option>");

            }

            out.println("</select></td></tr>");
            out.println("<tr><td class='td1'>Начало проведения осмотра</td>");
            out.println(" <td class='td2'><input type='text' name='aktnachalo' id='aktnachalo' /></td></tr>");

            out.println("<tr><td class='td1'>Окончание проведения осмотра</td>");
            out.println(" <td class='td2'><input type='text' name='aktokonchaniya' id='aktokonchaniya' /></td>");
            out.println(" </tr></table>");

            out.println("<input type='submit' name='aktdobavit' id='aktdobavit' value='OK' />");
            out.println("<input type='submit' name='aktotmena' id='aktotmena' value='Отменить' />");
            out.println("</div><br />");
            out.println("<div style='padding-left:30px;'>");

            if (request.getParameter("aktdobavit").equals("OK")) {
                String ss8 = request.getParameter("aktstansiya");
                String ss1 = request.getParameter("aktpredsedatel");
                String ss2 = request.getParameter("aktnachalo");
                String ss3 = request.getParameter("aktokonchaniya");
                String ss4 = request.getParameter("akttiposmotra");
                Statement st6 = getConnection(out).createStatement();
                int rs6 = st6.executeUpdate("insert into akt (nameStansiya,predsedatel,nachaloProved,okonchaniyaProved,tipOsmotr) "
                        + "values ('" + ss8 + "','" + ss1 + "','" + ss2 + "','" + ss3 + "','" + ss4 + "')");
            }
            {
                Statement st11 = getConnection(out).createStatement();
                ResultSet rs11 = st11.executeQuery("SELECT * FROM akt a, predpriyatie p, shtat sh, doljnost d "
                        + "where  a.nameStansiya=p.id and a.predsedatel=sh.idShtat and sh.doljnost=d.idDoljnost and a.id=(select max(id) from akt)");
                out.println("<table border='1' cellspacing='0' cellpadding='2' width='600px'>");
                out.println("<tr>");
                out.println("<td rowspan='2'>Станция</td>");
                out.println("<td colspan='2'>Сроки проведения осмотра</td>");
                out.println("<td rowspan='2'>Председатель комисси</td>");
                out.println("<td rowspan='2'>Дата отмены</td>");
                out.println("</tr>");
                out.println("<tr>");
                out.println("<td>Начало</td>");
                out.println("<td>Окончание</td>");
                out.println("</tr>");
                while (rs11.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs11.getString("p.namePredpriyatie") + "</td>");
                    out.println("<td>" + rs11.getString("a.nachaloProved") + "</td>");
                    out.println("<td>" + rs11.getString("a.okonchaniyaProved") + "</td>");
                    out.println("<td>" + rs11.getString("sh.family") + " " + rs11.getString("sh.name") + "." + rs11.getString("sh.lastname") + ".  (" + rs11.getString("d.nameDoljnost") + ")" + "</td>");
                    out.println("<td>&nbsp;</td>");
                    out.println("</tr>");
                }
                out.println("</table><br />");

            }
            out.println("<a href='dobavit_sostav' class='dalee'>Далее</a>");
            out.println("</div></form>"); //------------------------------------------------------------------------------------------------------
            out.println("");

            out.println("</div>");
            //conteyner tugadi--------------------------------------------------------------------------------------
            out.println("</body>");
            out.println("</html>");

        } catch (Exception e) {
            out.println("");
        } finally {
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
