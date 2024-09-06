<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
    String name = request.getParameter("name");
    session.setAttribute("name", name);
    Date startTime = new Date();
    session.setAttribute("startTime", startTime);
    
    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
    String formattedTime = sdf.format(startTime);
%>

<h2>Hello <%= name %></h2>
    <div class="top-right">
        Start Time: <%= formattedTime %>
    </div>
    <form action="logout.jsp" method="post">
        <input type="submit" value="Logout">
    </form>
</body>
</html>