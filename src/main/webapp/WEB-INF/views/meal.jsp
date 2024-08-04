<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Meal Information Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: url('./resources/image/res4.jpg') no-repeat center center fixed;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            color: #fff; /* White color for better contrast */
        }
        .form-container {
            background-color: rgba(255, 255, 255, 0.2); /* Semi-transparent white */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.5);
            width: 100%;
            max-width: 500px;
            box-sizing: border-box;
            margin: 20px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 24px;
            color: #fff; /* White color for header */
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #fff; /* White for better contrast */
            font-weight: bold;
            font-size: 14px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 12px;
            border-radius: 4px;
            border: 2px solid rgba(255, 255, 255, 0.7); /* Semi-transparent border */
            background-color: transparent; /* Fully transparent background */
            color: #fff; /* White text color */
            font-size: 14px;
            box-sizing: border-box;
        }
        .form-group input:focus, .form-group select:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.7);
        }
        .form-group input[type="submit"] {
            background-color: #28a745; /* Changed button color to green */
            border: 2px solid #28a745; /* Solid border matching button color */
            color: #fff; /* White text color */
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s, border-color 0.3s;
            margin-top: 10px;
            padding: 15px; /* Padding for buttons */
            width: 100%; /* Full width */
        }
        .form-group input[type="submit"]:hover {
            background-color: #218838; /* Darker green on hover */
            border-color: #218838; /* Darker border on hover */
        }
        .form-icon {
            margin-right: 10px;
            color: #28a745;
        }
        .message {
            display: none;
            background-color: rgba(40, 167, 69, 0.9); /* Green background */
            color: #fff; /* White text */
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            margin-top: 20px;
            font-size: 18px;
        }
        
        /* Responsive Styles */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
                margin: 10px;
            }
            h2 {
                font-size: 20px; /* Smaller font size for headings */
            }
            .form-group input, .form-group select {
                font-size: 12px; /* Smaller font size for inputs */
                padding: 10px; /* Smaller padding for inputs */
            }
            .form-group input[type="submit"] {
                font-size: 12px; /* Smaller font size for buttons */
                padding: 12px; /* Smaller padding for buttons */
            }
        }

        @media (max-width: 480px) {
            .form-container {
                padding: 15px;
                margin: 5px;
            }
            h2 {
                font-size: 18px; /* Even smaller font size for headings */
            }
            .form-group input, .form-group select {
                font-size: 12px; /* Smaller font size for inputs */
            }
            .form-group input[type="submit"] {
                font-size: 12px; /* Smaller font size for buttons */
            }
        }
    </style>
    <script>
        window.onload = function() {
            const urlParams = new URLSearchParams(window.location.search);
            const name = urlParams.get('name');
            const price = urlParams.get('price');
            if (name) document.getElementById('mealName').value = name;
            if (price) document.getElementById('price').value = price;
        }

        function showMessage() {
            const message = document.getElementById('message');
            message.style.display = 'block';
            setTimeout(() => {
                window.location.href = '/M-Restudent/index';
            }, 3000);
        }

        function handleSubmit(event) {
            const form = event.target; // Get the form element
            showMessage(); // Show success message
            form.submit(); // Submit the form
        }

        document.addEventListener('DOMContentLoaded', function () {
            const form = document.querySelector('form');
            form.addEventListener('submit', handleSubmit);
        });
    </script>
</head>
<body>
    <div class="form-container">
        <h2>Meal Information</h2>
        <form action="submitMeal" method="post">
            <div class="form-group">
                <label for="userName"><i class="fas fa-user form-icon"></i>Username:</label>
                <input type="text" id="userName" name="userName" required>
            </div>
            <div class="form-group">
                <label for="mealName"><i class="fas fa-utensils form-icon"></i>Meal Name:</label>
                <input type="text" id="mealName" name="mealName" required>
            </div>
            <div class="form-group">
                <label for="village"><i class="fas fa-home form-icon"></i>Village:</label>
                <input type="text" id="village" name="village" required>
            </div>
            <div class="form-group">
                <label for="areaName"><i class="fas fa-map-marker-alt form-icon"></i>Area Name:</label>
                <input type="text" id="areaName" name="areaName" required>
            </div>
            <div class="form-group">
                <label for="payType"><i class="fas fa-credit-card form-icon"></i>Payment Type:</label>
                <select id="payType" name="payType" required>
                    <option value="cash">Cash</option>
                    <option value="online">Online</option>
                </select>
            </div>
            <div class="form-group">
                <input type="submit" value="Submit">
            </div>
        </form>
        <div id="message" class="message">
            Your order has been accepted!
        </div>
    </div>
</body>
</html>
