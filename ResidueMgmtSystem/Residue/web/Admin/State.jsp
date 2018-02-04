<%-- 
    Document   : State
    Created on : Jan 29, 2018, 4:47:36 PM
    Author     : G-PROJECTS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean class="conn.clsConn" id="obj"></jsp:useBean>
<%
    String name="";
    String str="";
    String id="";
    String eid="";
    if(request.getParameter("DelId")!=null){
        str="delete from tbl_state where state_id="+request.getParameter("DelId");
        obj.insert(str);
         response.sendRedirect("State.jsp");
    }
    if(request.getParameter("EId")!=null){
        str="select * from tbl_state where state_id="+request.getParameter("EId");
        ResultSet rsEdit=obj.select(str);
        if(rsEdit.next()){
            name=rsEdit.getString("state_name");
            id=rsEdit.getString("state_id");
        }
    }
    if(request.getParameter("btnSubmit")!=null){
        name=request.getParameter("txtState");
        eid=request.getParameter("hid");
        if(eid!=null){
           str="update tbl_state set state_name='"+name+"' where state_id="+eid; 
        }
        else{
             str="insert into tbl_state(state_name) values('"+name+"')";  
        }
             
        obj.insert(str);
       response.sendRedirect("State.jsp");
    }
    
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="State.jsp" method="POST">
            <center>
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">State Details</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="200">State Name</td>
                        <td width="300"><input type="text" name="txtState" value="<%=name%>" size="40" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Submit" name="btnSubmit" /></td>
                <input type="hidden" name="hid" value="<%=id%>"/>
                    </tr>
                </tbody>
            </table>
            
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="3">State Details</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td width="300">State</td>
                        <td width="100">Edit</td>
                        <td width="100">Delete</td>
                    </tr>
                    <%
                        String selState="select * from tbl_state";
                        ResultSet rsState=obj.select(selState);
                        while(rsState.next())
                        {
                        
                        %>
                    <tr>
                        <td><%= rsState.getString("state_name") %></td>
                        <td><a href="State.jsp?EId=<%=rsState.getString("state_id") %>">Edit</a>  </td>
                        <td><a href="State.jsp?DelId=<%=rsState.getString("state_id") %>">Delete</a></td>
                    </tr>
                    <%
                        }
                        %>
                </tbody>
            </table>

            </center>
        </form>
    </body>
</html>
