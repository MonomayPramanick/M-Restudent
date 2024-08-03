<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Form Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('./resources/image/res2.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff; /* White color for better contrast */
        }
        .container {
            background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent white */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            width: 100%;
            max-width: 600px;
            box-sizing: border-box;
            height: auto; /* Ensure full height of the container */
        }
        h1 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #fff; /* White color for header */
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            font-size: 14px;
            color: #fff;/* White for better contrast */
        }
        input, select {
            background-color: transparent;/* Fully transparent background */
            border: 2px solid rgba(255, 255, 255, 0.7) /* Semi-transparent border */
            color: #fff;/* White text color */
            width: calc(100% - 24px);
            padding: 12px;
            margin-bottom: 20px;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }
        input:focus, select:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.7);
        }
        button {
            background-color: #28a745;/* Changed button color to green */
            border: 2px solid #28a745;/* Solid border matching button color */
            color: #fff;/* White text color */
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s, border-color 0.3s;
            margin-top: 10px;
            padding: 15px;/* Padding for buttons */
            width: 100% /* Full width */
        }
        button:hover {
            background-color: #218838;/* Darker green on hover */
            border-color: #218838;/* Darker border on hover */
        }
        .toggle-buttons {
            display: flex;
            justify-content: center;
            margin-bottom: 20px;
        }
        .toggle-buttons button {
            width: 100px;
            margin: 0 10px;
        }
        .hidden {
            display: none;
        }
        .back-button {
            background-color: transparent; /* Fully transparent background */
            border: 2px solid rgba(51, 51, 51, 0.7); /* Semi-transparent border */
            color: #fff; /* White text color */
            margin-top: 10px;
        }
        .back-button:hover {
            background-color: rgba(51, 51, 51, 0.2); /* Light background on hover */
            border-color: #333; /* Darker border on hover */
        }
    </style>
    <script>
        function showForm(formType) {
            var loginForm = document.getElementById('loginForm');
            var signInForm = document.getElementById('signInForm');
            if (formType === 'login') {
                loginForm.classList.remove('hidden');
                signInForm.classList.add('hidden');
            } else {
                signInForm.classList.remove('hidden');
                loginForm.classList.add('hidden');
            }
        }
    </script>
</head>
<body>
    <div class="container">
        
        <div class="toggle-buttons">
            <button type="button" onclick="showForm('login')">Login</button>
            <button type="button" onclick="showForm('signIn')">Sign In</button>
        </div>

        <form id="loginForm" action="users/login" method="post">
            <label for="loginUsername">Username:</label>
            <input type="text" id="loginUsername" name="username" required>

            <label for="loginPassword">Password:</label>
            <input type="password" id="loginPassword" name="password" required>

            <button type="submit">Login</button>
            <button type="button" class="back-button" onclick="location.href='/M-Restudent/index'">Back</button>
        </form>

        <form id="signInForm" class="hidden" action="users/submitForm" method="post">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>

            <label for="mealType">Meal Type:</label>
            <select id="mealType" name="mealType" required>
                <option value="Vegetarian">Vegetarian</option>
                <option value="Non-Vegetarian">Non-Vegetarian</option>
                <option value="Vegan">Vegan</option>
            </select>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="phoneNumber">Phone Number:</label>
            <input type="tel" id="phoneNumber" name="phoneNumber" required>

            <button type="submit">Sign In</button>
            <button type="button" class="back-button" onclick="location.href='/M-Restudent/index'">Back</button>
        </form>
    </div>
</body>
</html>
