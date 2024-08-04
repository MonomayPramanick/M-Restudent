<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Restudent</title>
    <link rel="stylesheet" href="resources/css/styles2.css">
    <link rel="stylesheet" href="resources/css/responsive.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            color: #333; 
            background-color: #f4f4f4;
        }

        header {
            background-color: #007bff; 
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }

        header nav {
            display: flex;
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap; /* Allow wrapping for smaller screens */
            padding: 0 20px;
        }

        nav ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            flex-wrap: wrap; /* Allow wrapping of menu items */
        }

        nav ul li {
            margin: 0 15px;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            padding: 10px;
            transition: background 0.3s;
        }

        nav a:hover {
            background-color: rgba(255, 255, 255, 0.2); /* Light hover effect */
        }

        .search {
            display: flex;
            align-items: center;
        }

        .search input {
            padding: 10px;
            border: none;
            border-radius: 5px 0 0 5px;
            font-size: 16px;
        }

        .search .btn {
            padding: 10px 15px;
            border: none;
            background-color: #28a745; /* Green */
            color: #fff;
            border-radius: 0 5px 5px 0;
            cursor: pointer;
            transition: background 0.3s;
        }

        .search .btn:hover {
            background-color: #218838; /* Darker green on hover */
        }

        .banner.contact-banner {
            background: url('./resources/image/food.jpg') no-repeat center center; /* Change to your banner image */
            background-size: cover;
            padding: 60px 20px;
            color: #fff;
            text-align: center;
        }

        .contact-content {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group textarea {
            resize: none; /* Prevent resizing */
        }

        .btn {
            background-color: #007bff; /* Primary color */
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .btn:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }

        footer {
            text-align: center;
            padding: 15px 0;
            background-color: #007bff; /* Primary color */
            color: #fff;
        }

        /* Responsive Styles */
        @media (max-width: 768px) {
            nav ul {
                flex-direction: column; /* Stack nav items */
                align-items: center; /* Center align */
            }

            nav ul li {
                margin: 5px 0; /* Adjust margin for vertical layout */
            }

            .search {
                flex-direction: column; /* Stack search input and button */
                align-items: stretch; /* Full width */
                margin-top: 10px;
            }

            .search input {
                width: 100%; /* Full width for smaller screens */
                margin-bottom: 10px; /* Space between input and button */
            }

            .search .btn {
                width: 100%; /* Full width for button */
            }
        }

        @media (max-width: 480px) {
            .contact-content {
                padding: 15px; /* Less padding on smaller screens */
            }

            h1 {
                font-size: 24px; /* Smaller heading font size */
            }

            h2 {
                font-size: 20px; /* Smaller subheading font size */
            }

            .btn {
                padding: 8px; /* Smaller button padding */
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>Contact Restudent</h1>
        <nav>
            <ul>
                <li><a href="index">Home</a></li>
                <li><a href="about">About</a></li>
                <li><a href="menu">Menu</a></li>
                <li><a href="contact">Contact</a></li>
                <li><a href="sign">Sign-In</a></li>
            </ul>
            <div class="search">
                <input type="text" placeholder="Search here">
                <button class="btn">Search</button>
            </div>
        </nav>
    </header>

    <section class="banner contact-banner">
        <div class="banner-content">
            <h2>Get in Touch</h2>
            <p>We'd love to hear from you</p>
        </div>
    </section>

    <main>
        <div class="container">
            <section class="contact-content">
                <h2>Contact Us</h2>
                <p>If you have any questions or comments, please feel free to reach out to us. You can fill out the form below, and we will get back to you as soon as possible.</p>

                <form action="submitContactForm" method="post">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" required>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required>
                    </div>

                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" name="message" rows="5" required></textarea>
                    </div>

                    <button type="submit" class="btn">Submit</button>
                </form>
            </section>
        </div>
    </main>

    <footer class="flex-all-center">
        <p>&copy; 2024 Restudent. All rights reserved.</p>
    </footer>
</body>
</html>
