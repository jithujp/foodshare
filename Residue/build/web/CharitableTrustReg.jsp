<%-- 
    Document   : CharitableTrustReg
    Created on : Feb 1, 2018, 4:57:17 PM
    Author     : G-PROJECTS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<jsp:useBean class="conn.clsConn" id="obj"></jsp:useBean>
<%
    String regno="";
    String name="";
    String address="";
    String contact1="";
    String contact2="";
    String email="";
    String website="";
    String authname="";
    String authaddress="";
    String authcontact="";
    String username="";
    String password="";
    int munid=0;
    String str="";
    ResultSet rs=null;
    String msg="";
    if(request.getParameter("btnSubmit")!=null){
        regno=request.getParameter("txtRegno");
        name=request.getParameter("txtName");
        address=request.getParameter("txtAddress");
        contact1=request.getParameter("txtContact1");
        contact2=request.getParameter("txtContact2");
        email=request.getParameter("txtEmail");
        website=request.getParameter("txtWebsite");
        authname=request.getParameter("txtAuthName");
        authaddress=request.getParameter("txtAuthAddress");
        authcontact=request.getParameter("txtAuthContact");
        username=request.getParameter("txtUsername");
        password=request.getParameter("txtPassword");
        munid=Integer.parseInt(request.getParameter("selMuncipality"));               
        str="select * from tbl_login where login_name='"+username+"' and login_password='"+password+"'";
        rs=obj.select(str);
        if(!rs.next())
        {
            str="select * from tbl_charitabletrust where chari_username='"+username+"' and chari_password='"+password+"'";
            rs=obj.select(str);
            if(!rs.next()){
                 str="insert into tbl_charitabletrust(chari_regno,chari_name,chari_address,chari_contact1,chari_contact2,chari_email,chari_website,chari_authorityname,chari_authorityaddress,chari_authoritycontact,chari_username,chari_password,chari_status,mun_id) values('"+
                regno+"','"+name+"','"+address+"','"+contact1+"','"+contact2+"','"+email+"','"+website+"','"+authname+"','"+authaddress+"','"+authcontact+"','"+username+"','"+password+"','P',"+munid+")";
                obj.insert(str);
                response.sendRedirect("CharitableTrustReg.jsp");
            }
            else{
                msg="Username and Password Already Exists!!!!";
            }   
           
        }
        else{
            msg="Username and Password Already Exists!!!!";
        }
        
    }
    
    
    
    
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <script type="text/javascript">
        function selectDistrict(x){


            if(window.XMLHttpRequest){
                xmlhttp=new XMLHttpRequest();

            }
            else{
                xmlhttp=new ActiveObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange=function(){
                if(xmlhttp.readyState==4 && xmlhttp.status==200){
                    document.getElementById("selDistrict").innerHTML=xmlhttp.responseText;
                }
            }
           
            xmlhttp.open("GET","responseDistrict.jsp?q="+x,true);
            xmlhttp.send();
           
           
        }
         function selectMuncipality(x){


            if(window.XMLHttpRequest){
                xmlhttp=new XMLHttpRequest();

            }
            else{
                xmlhttp=new ActiveObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange=function(){
                if(xmlhttp.readyState==4 && xmlhttp.status==200){
                    document.getElementById("selMuncipality").innerHTML=xmlhttp.responseText;
                }
            }
           
            xmlhttp.open("GET","responseMuncipality.jsp?q="+x,true);
            xmlhttp.send();
           
           
        }
        </script>
    </head>
    <body>
        <form name="frmCharitableTrust" action="CharitableTrustReg.jsp">
            <center>
            <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Charitable Trust Registration</th>
                        
                    </tr>
                </thead>
                <tbody>
                     <tr>
                        <td width="200">State</td>
                        <td width="300"><select name="selState" id="selState"  onchange="selectDistrict(this.value)">
                                <option value="">---Select State---</option>
                            <%
                                String strState="select * from tbl_state";
                                ResultSet rsState=obj.select(strState);
                                while(rsState.next())
                                {
                                
                                %>
                                <option value="<%=rsState.getString("state_id")%>"><%=rsState.getString("state_name") %></option>
                                <%}
                                    %>
                            </select></td>
                    </tr>
                    <tr>
                        <td>District</td>
                        <td><select name="selDistrict" id="selDistrict" onchange="selectMuncipality(this.value)">
                                <option value="">---Select District---</option>
                              
                            </select></td>
                    </tr>
                    <tr>
                        <td>Muncipality</td>
                        <td><select name="selMuncipality" id="selMuncipality">
                                <option value="">---Select Muncipality---</option>
                              
                            </select></td>
                    </tr>
                    <tr>
                        <td>Registration No</td>
                        <td><input type="text" name="txtRegno" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="txtName" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td><textarea name="txtAddress" rows="3" cols="40">
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>Contact No1</td>
                        <td><input type="text" name="txtContact1" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Contact No2</td>
                        <td><input type="text" name="txtContact2" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="txtEmail" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Website</td>
                        <td><input type="text" name="txtWebsite" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Authority Name</td>
                        <td><input type="text" name="txtAuthName" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Authority Address</td>
                        <td><textarea name="txtAuthAddress" rows="4" cols="40" >
                            </textarea></td>
                    </tr>
                    <tr>
                        <td>Authority Contact</td>
                        <td><input type="text" name="txtAuthContact" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="txtUsername" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="txtPassword" value="" size="40" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="Submit" name="btnSubmit" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><div style="color:red; text-align:center;font-weight: bold; "><%=msg%></div></td>
                        
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
