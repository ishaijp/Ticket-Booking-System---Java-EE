<%-- 
    Document   : dataloc
    Created on : Oct 28, 2016, 1:32:55 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="data" scope="request" class="com.project.models.data" >
            <jsp:setProperty name="data" property="fromcity" value='<%=request.getParameter("fromcity")%>'/>
            <jsp:setProperty name="data" property="tocity" value='<%=request.getParameter("tocity")%>'/>
            <jsp:setProperty name="data" property="date" value='<%=request.getParameter("date")%>'/>
            <jsp:setProperty name="data" property="coach" value='<%=request.getParameter("coach")%>'/>
        </jsp:useBean>
        
        <jsp:forward page="bussearch.do">
            <jsp:param name="fromcity" value="<%= data.getFromcity() %>" />
            <jsp:param name="tocity" value="<%= data.getTocity() %>" />
            <jsp:param name="date" value="<%= data.getDate() %>" />
            <jsp:param name="coach" value="<%= data.getCoach() %>" />
        </jsp:forward>
    </body>
</html>
