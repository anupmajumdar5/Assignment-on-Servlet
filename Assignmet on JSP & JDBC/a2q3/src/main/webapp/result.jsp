<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
            String name = request.getParameter("name");
            String ageString = request.getParameter("age");
            
            int age = 0;
            try {
                if (ageString != null && !ageString.isEmpty()) {
                    age = Integer.parseInt(ageString);
                }
            } catch (NumberFormatException e) {
                age = -1;
            }
            
            if (age < 18) {
                out.println("Hello " + name + ", you are not authorized to visit the site.");
            } else {
                out.println("Welcome " + name + " to this site.");
            }
        %>
</body>
</html>