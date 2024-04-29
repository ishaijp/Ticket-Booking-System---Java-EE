<%-- 
    Document   : success
    Created on : Oct 29, 2016, 9:49:20 PM
    Author     : Asus
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="data.Acess.GetCon"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.project.models.data"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Schedule</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div id="header">
            <div> <a href="index.html"><img src="images/logo.gif" alt=""></a>
              <ul>
                <li class="current"><a href="index.jsp">Home</a></li>
                <li><a href="">About us</a></li>
                <li><a href="">Contact us</a></li>
              </ul>
            </div>
      </div>
        <div id="content">
            <div>
                <form action="">
                    <table width="60%" align="center"
                           style="border:1px solid #000000;">
                        <tr>
                            <td colspan=4 align="center"
                                style="background-color:yellow">
                                <b>Your Information</b></td>
                        </tr>
                        <%
                            Connection con=null;
                            con = GetCon.getCon();
                        Statement st ; 
                        String rt;
                        ResultSet rs;
                        ArrayList al= null;
                        ArrayList al_list = new ArrayList();
                        String da = (String) request.getServletContext().getAttribute("date");
                        String na = (String) request.getServletContext().getAttribute("n");
                        String query ="select * from seat where name='"+na+"'";                
                        st = con.createStatement();
                        rs = st.executeQuery(query);
                        al = new ArrayList();
                        while(rs.next())
                               {                      
                                    al.add(rs.getString(2));
                                    al.add(rs.getString(3));
                                    al.add(rs.getString(4));
                                    al.add(rs.getString(5));
                                    al.add(rs.getString(6));
                                    al.add(rs.getString(7));
                                    al_list.add(al);
                                }
                         int count = 0;
                            String color = "#F9EBB3";
                            if (al_list != null) {
                                Iterator itr = al_list.iterator();
                                while (itr.hasNext()) {

                                    if ((count % 2) == 0) {
                                        color = "#eeffee";
                                    }
                                    count++;
                                    ArrayList aList = (ArrayList) itr.next();
                        %>
                         <tr style="background-color:<%=color%>;">
                         <center>
                            <td>Hi! <%= aList.get(0)%>
                            (<%=aList.get(1)%>)<br/>
                            Your Mobile No: <%=aList.get(2)%><br/>
                            Total Money: <%=aList.get(3)%><br/>
                            Your Seat Number: <%=aList.get(4)%><br/>
                            Bus Name: <%=aList.get(5)%><br/>
                            Date: <%=da %></td>
                         </center>   
                        </tr>
                        <tr style="background-color:yellow;">
                            <td>How will u paid??</td>
                            <td>
                                <label><input type="checkbox" name="bikash" value="Bikash">Bikash</label>
                                <label><input type="checkbox" name="mbanking" value="Mobile Banking">Mobile Banking</label>
                                <label><input type="checkbox" name="ccard" value="Credit Card">Credit Card</label>
                            </td>                          
                            <td> <input type="submit" value="Choose Option"></td>
                        </tr>
                        <%
                                }
                            }
                            
                            if (count == 0) {
                        %>
                        <tr>
                            <td colspan=4 align="center"
                                style="background-color:#eeffee"><b>No Record Found..</b></td>
                        </tr>
                        <%            } 
                        %>
                    </table> 
                </form>
            </div>
        </div>
    </body>
</html>
