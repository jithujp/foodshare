package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Muncipality_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      conn.clsConn obj = null;
      synchronized (_jspx_page_context) {
        obj = (conn.clsConn) _jspx_page_context.getAttribute("obj", PageContext.PAGE_SCOPE);
        if (obj == null){
          obj = new conn.clsConn();
          _jspx_page_context.setAttribute("obj", obj, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("          <script type=\"text/javascript\">\n");
      out.write("        function selectDistrict(x){\n");
      out.write("\n");
      out.write("\n");
      out.write("            if(window.XMLHttpRequest){\n");
      out.write("                xmlhttp=new XMLHttpRequest();\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                xmlhttp=new ActiveObject(\"Microsoft.XMLHTTP\");\n");
      out.write("            }\n");
      out.write("            xmlhttp.onreadystatechange=function(){\n");
      out.write("                if(xmlhttp.readyState==4 && xmlhttp.status==200){\n");
      out.write("                    document.getElementById(\"selDistrict\").innerHTML=xmlhttp.responseText;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            xmlhttp.open(\"GET\",\"responseDistrict.jsp?q=\"+x,true);\n");
      out.write("            xmlhttp.send();\n");
      out.write("           \n");
      out.write("           \n");
      out.write("        }\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form name=\"frmMuncipality\" action=\"Muncipality.jsp\" method=\"POST\">\n");
      out.write("            <center>\n");
      out.write("            <table border=\"1\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th colspan=\"2\">Muncipality Details</th>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td width=\"200\">State</td>\n");
      out.write("                        <td width=\"300\"><select name=\"selState\" onchange=\"selectDistrict(this.value)\">\n");
      out.write("                                <option value=\"\">---Select State---</option>\n");
      out.write("                                ");

                                    String selState="select * from tbl_state";
                                    ResultSet rsState=obj.select(selState);
                                    while(rsState.next()){
                                    
                                    
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print( rsState.getString("state_id") );
      out.write('"');
      out.write('>');
      out.print( rsState.getString("state_name") );
      out.write("</option>\n");
      out.write("                                ");
 }
                                
      out.write("\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>District</td>\n");
      out.write("                        <td><select name=\"selDistrict\">\n");
      out.write("                                <option value=\"\">---Select District---</option>\n");
      out.write("                                <option></option>\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Muncipality</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtMuncipality\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\"><input type=\"submit\" value=\"Submit\" name=\"btnSumit\" /></td>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("            </center>                \n");
      out.write("        </form>\n");
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
