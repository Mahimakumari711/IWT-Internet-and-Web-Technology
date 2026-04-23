<%@ include file="navbar.jsp" %>
<%@ page import="java.sql.*" %>

<%
String idParam = request.getParameter("id");

if(idParam == null){
    idParam = "1";
}

int id = Integer.parseInt(idParam);

Connection con = null;

try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection(
        "jdbc:mysql://localhost:3306/college_db",
        "root",
        "Kumarimahima711@"
    );

    if(request.getMethod().equalsIgnoreCase("POST")){
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        int age = Integer.parseInt(request.getParameter("age"));
        float cgpa = Float.parseFloat(request.getParameter("cgpa"));

        PreparedStatement ps = con.prepareStatement(
            "UPDATE student SET name=?,email=?,course=?,age=?,cgpa=? WHERE id=?"
        );

        ps.setString(1,name);
        ps.setString(2,email);
        ps.setString(3,course);
        ps.setInt(4,age);
        ps.setFloat(5,cgpa);
        ps.setInt(6,id);

        ps.executeUpdate();

        response.sendRedirect("displayStudents.jsp");
    }

    PreparedStatement ps = con.prepareStatement(
        "SELECT * FROM student WHERE id=?"
    );
    ps.setInt(1,id);

    ResultSet rs = ps.executeQuery();

    if(rs.next()){
%>

<h2>Update Student</h2>

<form method="post">
    Name: <input type="text" name="name" value="<%= rs.getString("name") %>"><br><br>
    Email: <input type="text" name="email" value="<%= rs.getString("email") %>"><br><br>
    Course: <input type="text" name="course" value="<%= rs.getString("course") %>"><br><br>
    Age: <input type="number" name="age" value="<%= rs.getInt("age") %>"><br><br>
    CGPA: <input type="text" name="cgpa" value="<%= rs.getFloat("cgpa") %>"><br><br>

    <input type="submit" value="Update">
</form>

<%
    } else {
        out.println("<p style='color:red;'>No student found!</p>");
    }

    rs.close();
    ps.close();
    con.close();

}catch(Exception e){
    out.println(e);
}
%>
