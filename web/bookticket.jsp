<%-- 
    Document   : bookticket
    Created on : Oct 27, 2016, 2:41:20 PM
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
        <title>Book Ticket</title>
        <link rel="stylesheet" type="text/css" href="css/style.css">
    </head>
    <body>
        <div id="header">
            <div> <a href="index.html"><img src="images/logo.gif" alt=""></a>
              <ul>
                <li class="current"><a href="index.html">Home</a></li>
                <li><a href="">About us</a></li>
                <li><a href="">Contact us</a></li>
              </ul>
            </div>
      </div>
        <div id="content">
            <div>      
                <form method="get" action="sit.do">
                    <center>
                        <label>Please Select Seats</label><br/>
                        <label><button type="submit" name="but" value="A1">1</button></label><br/>
                        <label><button type="submit" name="but" value="B1">2</button></label>
                        <label><button type="submit" name="but" value="B2">3</button></label>
                        <label><button type="submit" name="but" value="B3">4</button></label>
                        <label><button type="submit" name="but" value="B4">5</button></label><br/>
                        <label><button type="submit" name="but" value="C1">6</button></label>
                        <label><button type="submit" name="but" value="C2">7</button></label>
                        <label><button type="submit" name="but" value="C3">8</button></label>
                        <label><button type="submit" name="but" value="C4">9</button></label><br/>
                        <label><button type="submit" name="but" value="D1">10</button></label>
                        <label><button type="submit" name="but" value="D2">11</button></label>
                        <label><button type="submit" name="but" value="D3">12</button></label>
                        <label><button type="submit" name="but" value="D4">13</button></label><br/>
                        <label><button type="submit" name="but" value="E1">14</button></label>
                        <label><button type="submit" name="but" value="E2">15</button></label>
                        <label><button type="submit" name="but" value="E3">16</button></label>
                        <label><button type="submit" name="but" value="E4">17</button></label><br/>
                        <label><button type="submit" name="but" value="F1">18</button></label>
                        <label><button type="submit" name="but" value="F2">19</button></label>
                        <label><button type="submit" name="but" value="F3">20</button></label>
                        <label><button type="submit" name="but" value="F4">21</button></label><br/>    
                    </center>            
                </form>  
                <form method="post" action="show.jsp">
                <table width="60%" align="center"
                           style="border:1px solid #000000;">
                        <tr>
                            <td colspan=4 align="center"
                                style="background-color:teal">
                                <b>Bus Record</b></td>
                        </tr>
                        <tr style="background-color:lightgrey;">
                            <td>ID</td>
                            <td><b>Seat</b></td>
                            <td><b>Price</b></td>
                        </tr>
                        <%
                            int i = 1;
                            String price = (String)request.getServletContext().getAttribute("price");
                            if(request.getAttribute("seat") != null)
                            {                          
                            String seat = (String)request.getAttribute("seat");  
                        %>
                        <tr style="color:yellow;">
                            <td><%=i %></td>
                            <td><%=seat %></td>
                            <%
                                application.setAttribute("fs", seat);
                            %>
                            <td><%=price %></td>
                        </tr>
                        <tr>
                            <td>Name: <input type="text" name="name" value=""></td>
                            <td>Select Gender: 
                                <select name="gen">
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                            </td>
                            <td>Mobile NO: <input type="text" name="age" value="" size="10"></td>
                        </tr>
                        <tr style="color:yellow;">
                            <td>Total: <%=price %></td>
                            <%
                                application.setAttribute("total", price);
                            %>
                        </tr>
                        <% i++;}%>
                        <tr>
                            <td><input type="submit" value="book seat"></td>
                        </tr>
                    </table> 
                </form>
            </div>
        </div>
    </body>
</html>
