<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMR Calculator</title>
<style>
    body { font-family: Arial, sans-serif; max-width: 500px; margin: 50px auto; padding: 20px; }
    input[type="text"] { width: 100px; padding: 5px; }
    input[type="submit"] { background: #4CAF50; color: white; padding: 10px 20px; border: none; cursor: pointer; }
    .form-group { margin: 15px 0; }
</style>
</head>
<body>
    <h2>BMR Calculator</h2>
    
    <form action="bmrResult.jsp" method="POST">
        <div class="form-group">
            Age: <input type="number" name="age" min="1" max="120" required>
        </div>
        
        <div class="form-group">
            Gender:
            <label><input type="radio" name="gender" value="male" required> Male</label>
            <label><input type="radio" name="gender" value="female" required> Female</label>
        </div>
        
        <div class="form-group">
            Height (cm): <input type="number" name="height" min="50" max="250" step="0.1" required>
        </div>
        
        <div class="form-group">
            Weight (kg): <input type="number" name="weight" min="20" max="500" step="0.1" required>
        </div>
        
        <input type="submit" value="Calculate BMR">
    </form>
</body>
</html>
