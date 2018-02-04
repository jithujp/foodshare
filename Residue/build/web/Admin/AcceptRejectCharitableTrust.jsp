<%-- 
    Document   : Accept or Reject Charitable Trust
    Created on : Feb 2, 2018, 3:08:56 PM
    Author     : G-PROJECTS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean class="conn.clsConn" id="obj"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="frmAcceptRejectCharitableTrust" action="AcceptRejectCharitableTrust.jsp" method="POST">
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="7">Request From Charitable Trust</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Reg No</td>
                        <td>Name</td>
                        <td>Address</td>
                        <td>Contact No1</td>
                        <td>Contact No2</td>
                        <td>Email</td>
                        <td>View Full Details</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
</html>
