<%-- 
    Document   : index
    Created on : Jan 29, 2018, 4:44:49 PM
    Author     : G-PROJECTS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean class="conn.clsConn" id="obj"></jsp:useBean>
<%
    String username="";
    String password="";
    String str="";
    if(request.getParameter("btnLogin")!=null){
        username=request.getParameter("txtUsername");
        password=request.getParameter("txtPassword");
        str="select * from tbl_login where login_name='"+username+"' and login_password='"+password+"'";
        ResultSet rsLogin=obj.select(str);
        if(rsLogin.next()){
            session.setAttribute("username", rsLogin.getString("login_name"));
            session.setAttribute("userid", rsLogin.getInt("login_id"));
            session.setAttribute("userstatus", "Admin");
            response.sendRedirect("Admin/AdminHome.jsp");
                    
        }
    }
    
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="frmLogin" action="index.jsp" method="POST">
            <center>
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="200">Username</td>
                        <td width="300"><input type="text" name="txtUsername" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="txtPassword" value="" size="40" /></td>
                    </tr>
                    <tr>
                
                        <td colspan="2" ><input type="submit" value="Login" name="btnLogin" /></td>
                       
                    </tr>
                </tbody>
            </table>
                
                <table border="1">
                   
                    <tbody>
                        <tr>
                            <td><a href="CharitableTrustReg.jsp"> Charitable Trust Registration</a></td>
                        </tr>
                        <tr>
                            <td></td>
                        </tr>
                    </tbody>
                </table>

            </center>
        </form>
    </body>
</html>
