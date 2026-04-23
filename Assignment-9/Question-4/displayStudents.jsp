<%@ include file="navbar.jsp" %>
<%@ page import="java.sql.*" %>

<h2>Student List</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Course</th>
    <th>Age</th>
    <th>CGPA</th>
    <th>Actions</th>
</tr>

<%
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_db","root","Kumarimahima711@");

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM student");

    while(rs.next()){
%>
<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("email") %></td>
    <td><%= rs.getString("course") %></td>
    <td><%= rs.getInt("age") %></td>
    <td><%= rs.getFloat("cgpa") %></td>
    <td>
        <a href="studentDetails.jsp?id=<%= rs.getInt("id") %>">Details</a> |
        <a href="updateStudent.jsp?id=<%= rs.getInt("id") %>">Update</a> |
        <a href="deleteStudent.jsp?id=<%= rs.getInt("id") %>">Delete</a>
    </td>
</tr>

<%
    }
}catch(Exception e){
    out.println(e);
}
%>
</table>
<%@ include file="navbar.jsp" %>
<%@ page import="java.sql.*" %>

<h2>Student List</h2>

<table border="1">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Course</th>
    <th>Age</th>
    <th>CGPA</th>
    <th>Actions</th>
</tr>

<%
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/college_db","root","Kumarimahima711@");

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM student");

    while(rs.next()){
%>
<tr>
    <td><%= rs.getInt("id") %></td>
    <td><%= rs.getString("name") %></td>
    <td><%= rs.getString("email") %></td>
    <td><%= rs.getString("course") %></td>
    <td><%= rs.getInt("age") %></td>
    <td><%= rs.getFloat("cgpa") %></td>
    <td>
        <a href="studentDetails.jsp?id=<%= rs.getInt("id") %>">Details</a> |
        <a href="updateStudent.jsp?id=<%= rs.getInt("id") %>">Update</a> |
        <a href="deleteStudent.jsp?id=<%= rs.getInt("id") %>">Delete</a>
    </td>
</tr>

<%
    }
}catch(Exception e){
    out.println(e);
}
%>
</table>
