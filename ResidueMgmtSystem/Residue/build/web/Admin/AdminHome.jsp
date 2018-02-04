<%-- 
    Document   : AdminHome
    Created on : Feb 1, 2018, 4:35:02 PM
    Author     : G-PROJECTS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="frmAdminHome" action="AdminHome.jsp" method="POST">
            <center>
            <table border="1" width="400">
               
                <tbody>
                    <tr>
                        <td><a href="State.jsp"> State</a></td>
                    </tr>
                    <tr>
                        <td><a href="District.jsp">District</a></td>
                    </tr>
                    <tr>
                        <td><a href="Muncipality.jsp">Muncipality</a></td>
                    </tr>
                     <tr>
                        <td><a href="AcceptRejectCharitableTrust">Registration Request From Charitable Trust</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
