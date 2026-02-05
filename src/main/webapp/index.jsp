<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Todo App</title>
</head>
<body>
<h2>My Todo List Latest Check By Binay Sir 🚀</h2>

<form method="post" action="todo">
    <input type="text" name="task" placeholder="Enter task" required/>
    <button type="submit">Add</button>
</form>

<ul>
<%
    java.util.List<String> tasks =
        (java.util.List<String>) request.getAttribute("tasks");
    if (tasks != null) {
        for (String t : tasks) {
%>
            <li><%= t %></li>
<%
        }
    }
%>
</ul>

</body>
</html>
