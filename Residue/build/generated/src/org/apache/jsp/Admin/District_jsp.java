package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class District_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    int stateid=0;
    int distid=0;
    String distname="";
    String str="";
    String eid="";
    if(request.getParameter("DelId")!=null){
        str="delete from tbl_district where dist_id="+request.getParameter("DelId");
        obj.insert(str);
        response.sendRedirect("District.jsp");
    }
    if(request.getParameter("EId")!=null){
        str="select * from tbl_district where dist_id="+request.getParameter("EId");
        ResultSet rsDist=obj.select(str);
        if(rsDist.next()){
            stateid=Integer.parseInt(rsDist.getString("state_id"));
            distid=Integer.parseInt(rsDist.getString("dist_id"));
            distname=rsDist.getString("dist_name");
        }
    }
    if(request.getParameter("btnSubmit")!=null){
        stateid=Integer.parseInt(request.getParameter("selState"));
        distname=request.getParameter("txtDistrict");
        eid=request.getParameter("hid");
        if(eid!=null){
            str="update tbl_district set dist_name='"+distname+"',state_id="+stateid+" where dist_id="+eid;
        }
        else{
            str="insert into tbl_district(dist_name,state_id) values('"+distname+"',"+stateid+")";
        }
       
        obj.insert(str);
        response.sendRedirect("District.jsp");
    }

      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form name=\"frmDistrict\" action=\"District.jsp\" method=\"POST\">\n");
      out.write("            <center>\n");
      out.write("            <table border=\"1\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th colspan=\"2\">District Details</th>\n");
      out.write("                       \n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td width=\"200\">State</td>\n");
      out.write("                        <td width=\"300\"><select name=\"selState\">\n");
      out.write("                                <option value=\"\">---Select State---</option>\n");
      out.write("                            ");

                                String selState="select * from tbl_state";
                                ResultSet rsState=obj.select(selState);
                                while(rsState.next()){
                                    if(Integer.parseInt(rsState.getString("state_id"))==stateid)
                                    {
                                     
      out.write("\n");
      out.write("                                     <option value=\"");
      out.print(rsState.getString("state_id"));
      out.write("\" selected=\"selected\">");
      out.print( rsState.getString("state_name") );
      out.write("</option>\n");
      out.write("                                ");

                                }
                                else{
                                
      out.write("\n");
      out.write("                                <option value=\"");
      out.print(rsState.getString("state_id"));
      out.write('"');
      out.write('>');
      out.print( rsState.getString("state_name") );
      out.write("</option>\n");
      out.write("                                ");

                                    }
                                }
                                 
      out.write("\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>District</td>\n");
      out.write("                        <td><input type=\"text\" name=\"txtDistrict\" value=\"");
      out.print(distname );
      out.write("\" size=\"40\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td colspan=\"2\"><input type=\"submit\" value=\"Submit\" name=\"btnSubmit\" /></td>\n");
      out.write("                <input type=\"hidden\" name=\"hid\" value=\"");
      out.print(distid);
      out.write("\"/>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("                            <table border=\"1\">\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th colspan=\"3\">District Details</th>                                       \n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                    ");

                                        selState="select * from tbl_state";
                                        rsState=obj.select(selState);                                        
                                        while(rsState.next()){
                                     
      out.write("\n");
      out.write("                                     <tr style=\"background-color:aquamarine;\">\n");
      out.write("                                         <td colspan=\"3\">State : ");
      out.print( rsState.getString("state_name") );
      out.write("</td>\n");
      out.write("                                         \n");
      out.write("                                     </tr>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td>District</td>\n");
      out.write("                                        <td>Edit</td>\n");
      out.write("                                        <td>Delete</td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");

                                        String selDist="select * from tbl_district where state_id="+rsState.getString("state_id");
                                        ResultSet rsDist=obj.select(selDist);
                                        while(rsDist.next())
                                        {
                                        
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td width=\"300\">");
      out.print(rsDist.getString("dist_name") );
      out.write("</td>\n");
      out.write("                                        <td width=\"100\"><a href=\"District.jsp?EId=");
      out.print(rsDist.getString("dist_id"));
      out.write("\">Edit</a></td>\n");
      out.write("                                        <td width=\"100\"><a href=\"District.jsp?DelId=");
      out.print(rsDist.getString("dist_id"));
      out.write("\">Delete</a></td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");
}
                                        }
                                      
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("\n");
      out.write("            </center>\n");
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
