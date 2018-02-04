package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class CharitableTrustReg_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form name=\"frmCharitableTrust\" action=\"CharitableTrustReg.jsp\">\n");
      out.write("            <table border=\"1\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th colspan=\"2\">Charitable Trust Registration</th>\n");
      out.write("                        \n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                     <tr>\n");
      out.write("                        <td>State</td>\n");
      out.write("                        <td><select name=\"selState\" id=\"selState\">\n");
      out.write("                                <option value=\"\">---Select State---</option>\n");
      out.write("                            ");

                                String strState="select * from tbl_state";
                                ResultSet rsState=obj.select(strState);
                                while(rsState.next())
                                {
                                
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(rsState.getString("state_id"));
      out.write('"');
      out.write('>');
      out.print(rsState.getString("state_name") );
      out.write("</option>\n");
      out.write("                                ");
}
                                    
      out.write("\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>District</td>\n");
      out.write("                        <td><select name=\"selDistrict\" id=\"selDistrict\">\n");
      out.write("                                <option value=\"\">---Select District---</option>\n");
      out.write("                              \n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Muncipality</td>\n");
      out.write("                        <td><select name=\"selMuncipality\" id=\"selMuncipality\">\n");
      out.write("                                <option value=\"\">---Select Muncipality---</option>\n");
      out.write("                              \n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Registration No</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtRegno\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Name</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtName\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Address</td>\n");
      out.write("                        <td><textarea name=\"txtAddress\" rows=\"3\" cols=\"35\">\n");
      out.write("                            </textarea></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Contact No1</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtContact1\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Contact No2</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtContact2\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Email</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtEmail\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Website</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtWebsite\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Authority Name</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtAuthName\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Authority Address</td>\n");
      out.write("                        <td><textarea name=\"txtAuthAddress\" rows=\"4\" cols=\"35\">\n");
      out.write("                            </textarea></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Authority Contact</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtAuthContact\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Username</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtUsername\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Password</td>\n");
      out.write("                        <td><input type=\"password\" name=\"txtPassword\" value=\"\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\"><input type=\"submit\" value=\"Submit\" name=\"btnSubmit\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("\n");
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
