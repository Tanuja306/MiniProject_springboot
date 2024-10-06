<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<div class="sidebar" id="sidebar">
  <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#">About</a></li>
    <li><a href="AddTask">Add Task</a></li>
    <li><a href="#">Contact</a></li>
    <li><a href="logout">Logout</a></li>
  </ul>
</div>

<div class="content" id="content">
  <h1>Welcome</h1>
</div>

</body>
</head>
<body>

</body>
</html>
<style>

* {
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  background-color: #f1f1f1;
  text-align: center;
}

.sidebar {
  height: 100%;
  width: 250px;
  min-width: 150px;
  max-width: 400px;
  position: fixed;
  top: 0;
  left: 0;
  background-color: #333;
  color: #fff;
  padding-top: 20px;
  overflow-y: auto;
  transition: width 0.3s ease;
  padding-inline: 8px;
}

.sidebar ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.sidebar ul li {
  padding: 20px;
  border-bottom: 1px solid #555;
}

.sidebar ul li a {
  color: #fff;
  text-decoration: none;
}

.sidebar ul li a:hover {
  background-color: #555;
}

.content {
  margin-left: 250px;
  padding: 20px;
  transition: margin-left 0.3s ease;
}

@media (max-width: 768px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .content {
    margin-left: 0;
  }
}

</style>

