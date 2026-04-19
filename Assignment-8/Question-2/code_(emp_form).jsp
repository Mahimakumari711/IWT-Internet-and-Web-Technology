<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
</head>
<body>

<h2>Employee Details Form</h2>

<form action="empdisplay.jsp" method="post">

Employee ID: <input type="text" name="id"><br><br>
Name: <input type="text" name="name"><br><br>
Mobile: <input type="text" name="mobile"><br><br>
Email: <input type="email" name="email"><br><br>

Gender:
<input type="radio" name="gender" value="Male"> Male
<input type="radio" name="gender" value="Female"> Female <br><br>

DOB: <input type="date" name="dob"><br><br>

Address:<br>
<textarea name="address"></textarea><br><br>

Country:
<select name="country">
    <option value="India">India</option>
    <option value="Other">Other</option>
</select><br><br>

Languages Known:
<input type="checkbox" name="lang" value="English"> English
<input type="checkbox" name="lang" value="Hindi"> Hindi
<input type="checkbox" name="lang" value="Odia"> Odia
<input type="checkbox" name="lang" value="Spanish"> Spanish
<br><br>

<input type="submit" value="Submit">

</form>
</body>
</html>
