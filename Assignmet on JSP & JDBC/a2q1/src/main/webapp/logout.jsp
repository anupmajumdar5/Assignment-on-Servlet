<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat, java.util.concurrent.TimeUnit"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
   
    String name = (String) session.getAttribute("name");
    Date startTime = (Date) session.getAttribute("startTime");
    Date endTime = new Date();
    
  
    long durationMillis = endTime.getTime() - startTime.getTime();
    long durationSeconds = TimeUnit.MILLISECONDS.toSeconds(durationMillis);
    

    SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
    String formattedEndTime = sdf.format(endTime);
%>

<h2>Thank You <%= name %></h2>
    <p>Duration of usage: <%= durationSeconds %> seconds</p>
    <p>Start Time: <%= sdf.format(startTime) %></p>
    <p>End Time: <%= formattedEndTime %></p>
    <% 
        // Invalidate the session
        session.invalidate();
    %>
</body>
</html>