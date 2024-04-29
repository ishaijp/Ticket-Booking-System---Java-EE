package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Iterator;
import java.util.ArrayList;

public final class bookticket_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Book Ticket</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <div> <a href=\"index.html\"><img src=\"images/logo.gif\" alt=\"\"></a>\n");
      out.write("              <ul>\n");
      out.write("                <li class=\"current\"><a href=\"index.html\">Home</a></li>\n");
      out.write("                <li><a href=\"\">About us</a></li>\n");
      out.write("                <li><a href=\"\">Contact us</a></li>\n");
      out.write("              </ul>\n");
      out.write("            </div>\n");
      out.write("      </div>\n");
      out.write("        <div id=\"content\">\n");
      out.write("            <div>\n");
      out.write("                    <table width=\"60%\" align=\"center\"\n");
      out.write("                           style=\"border:1px solid #000000;\">   \n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=4 align=\"center\"\n");
      out.write("                                style=\"background-color:teal\">\n");
      out.write("                                <b>Bus Record</b></td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");
                          
                            String[] sl = request.getParameterValues("selects");
                            ArrayList al = (ArrayList) request.getAttribute("alList");
                            String color = "#F9EBB3";  
                            for(String s:sl)
                            {
                        
      out.write("\n");
      out.write("                        <tr style=\"background-color:");
      out.print(color);
      out.write(";\">\n");
      out.write("                            <td>");
      out.print(s);
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        ");

                                }
                        
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Please Select Seats</th>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"button\" id=\"but1\" value=\"1\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"button\" id=\"but2\" value=\"2\">\n");
      out.write("                                <input type=\"button\" id=\"but3\" value=\"3\"></td>\n");
      out.write("                            <td><input type=\"button\" id=\"but4\" value=\"4\">\n");
      out.write("                            <input type=\"button\" id=\"but5\" value=\"5\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"button\" id=\"but6\" value=\"6\">\n");
      out.write("                            <input type=\"button\" id=\"but7\" value=\"7\"></td>\n");
      out.write("                            <td><input type=\"button\" id=\"but8\" value=\"8\">\n");
      out.write("                            <input type=\"button\" id=\"but9\" value=\"9\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"button\" id=\"but10\" value=\"10\">\n");
      out.write("                            <input type=\"button\" id=\"but11\" value=\"11\"></td>\n");
      out.write("                            <td><input type=\"button\" id=\"but12\" value=\"12\">\n");
      out.write("                            <input type=\"button\" id=\"but13\" value=\"13\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"button\" id=\"but14\" value=\"14\">\n");
      out.write("                            <input type=\"button\" id=\"but15\" value=\"15\"></td>\n");
      out.write("                            <td><input type=\"button\" id=\"but16\" value=\"16\">\n");
      out.write("                            <input type=\"button\" id=\"but17\" value=\"17\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td><input type=\"button\" id=\"but18\" value=\"18\">\n");
      out.write("                            <input type=\"button\" id=\"but19\" value=\"19\"></td>\n");
      out.write("                            <td><input type=\"button\" id=\"but20\" value=\"20\">\n");
      out.write("                            <input type=\"button\" id=\"but21\" value=\"21\"></td>\n");
      out.write("                        </tr>\n");
      out.write("                    </table> \n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
