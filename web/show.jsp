<%-- 
    Document   : show
    Created on : Oct 28, 2016, 11:34:04 PM
    Author     : Asus
--%>

<%@page import="java.sql.Statement"%>
<%@page import="data.Acess.GetCon"%>
<%@page import="java.sql.Connection"%>

<%
        String name = request.getParameter("name");
        String gen = request.getParameter("gen");
        String age = request.getParameter("age");
        String bus = (String) request.getServletContext().getAttribute("bus");
        String total = (String) request.getServletContext().getAttribute("total");
        String seat = (String) request.getServletContext().getAttribute("fs");
        
        Connection con=null;
        con = GetCon.getCon();
            Statement st;
            st = con.createStatement();                
            int i = st.executeUpdate("insert into seat(name,gen,age,total,seat,bus) values('"+name+"','"+gen+"','"+age+"','"+total+"','"+seat+"','"+bus+"')");
            if(i>0)
            {
                application.setAttribute("n", name);
                response.sendRedirect("success.jsp");
            } else
            {
                response.sendRedirect("index.jsp");
            }  
%>
