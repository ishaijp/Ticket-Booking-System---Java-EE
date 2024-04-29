<%-- 
    Document   : view
    Created on : Oct 21, 2016, 9:49:20 PM
    Author     : Asus
--%>

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
                <form action="bookticket.jsp">
                    <table width="60%" align="center"
                           style="border:1px solid #000000;">
                        <tr>
                            <td colspan=4 align="center"
                                style="background-color:teal">
                                <b>Bus Record</b></td>
                        </tr>
                        <tr style="background-color:lightgrey;">
                            <td><b>Select</b></td>
                            <td><b>Date</b></td>
                            <td><b>Time</b></td>
                            <td><b>Bus Name</b></td>
                            <td><b>From</b></td>
                            <td><b>To</b></td>
                            <td><b>Coach</b></td>
                            <td><b>Price</b></td>
                        </tr>
                        <%
                            int count = 0;
                            String color = "#F9EBB3";
                            if (request.getAttribute("alList") != null) {
                                ArrayList al = (ArrayList) request.getAttribute("alList");
                                System.out.println(al);
                                Iterator itr = al.iterator();
                                while (itr.hasNext()) {

                                    if ((count % 2) == 0) {
                                        color = "#eeffee";
                                    }
                                    count++;
                                    ArrayList aList = (ArrayList) itr.next();
                        %>
                        <tr style="background-color:<%=color%>;">
                            <td><input type="checkbox" name="selects" value="<%= aList.get(2)%>"/></td>
                            <td><%= aList.get(0)%></td>
                            <td><%=aList.get(1)%></td>
                            <td><%=aList.get(2)%></td>
                            <td><%=aList.get(3)%></td>
                            <td><%=aList.get(4)%></td>
                            <td><%=aList.get(5)%></td>
                            <td><%=aList.get(6)%></td>
                            <td><input type="submit" value="View Seats"</td>
                        </tr>
                        <%
                          application.setAttribute("price", aList.get(6));
                          application.setAttribute("bus", aList.get(2));
                          application.setAttribute("date", aList.get(0));
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
