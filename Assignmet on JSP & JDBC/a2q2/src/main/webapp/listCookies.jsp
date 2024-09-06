<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>List of Cookies</h2>
    <form action="listCookies.jsp" method="post">
        <input type="submit" value="List Cookies">
    </form>
    
    <h3>Cookies:</h3>
    <ul>
        <% 
            javax.servlet.http.Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (javax.servlet.http.Cookie cookie : cookies) {
                    String name = cookie.getName();
                    String value = cookie.getValue();
                    out.println("<li><b>Name:</b> " + name + " <b>Value:</b> " + value + "</li>");
                }
            } else {
                out.println("<li>No cookies found</li>");
            }
        %>
    </ul>
</body>
</html>