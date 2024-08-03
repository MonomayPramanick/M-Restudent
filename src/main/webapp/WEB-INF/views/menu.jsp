<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu Page</title>
 
    <link rel="stylesheet" href="resources/css/menustyle.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">  
</head>
<body style="  background-image: linear-gradient(rgba(0,0,0,0.5),rgba(0,0,0,0.5)),url('./resources/image/res1.jpg');">

    <header>
        <div class="main">
            <ul>
              
               <li><a href="index">Home</a></li>
                <li><a href="about">About</a></li>
                <li><a href="menu">Menu</a></li>                
                <li><a href="contact">Contact</a></li>
                <li><a href="sign">SignIn</a></li>
            
            </ul>
        </div>
        <div class="title">
        	<h2 style="text-align:center; color:#fff; margin-top:50px;">Order now</h2>

            <h1 style="text-align:center; color:#fff; margin-top:50px;">Explore your delicious menu</h1>

            
        </div>
    </header>

    <div class="container">
        <div class="card">
            <h2 class="my-2">Taste The Dish</h2>
            <div class="cards">
                <div class="card-item">
                    <a href="resources/image/m1.jpg"><img src="resources/image/m1.jpg" alt=""></a>
                    <p>Price: 120</p>
                    <p>Name: Roti-Chicken</p>
                    <button class="cart" style="background-color: green; color: white;" onclick="location.href='/M-Restudent/meal'">Add to cart</button>
                </div>
                <div class="card-item">
                    <a href="resources/image/m2.jpg"><img src="resources/image/m2.jpg" alt=""></a>
                    <p>Price: 130</p>
                    <p>Name: Biryani</p>
                    <button class="cart" style="background-color: green; color: white;" onclick="location.href='/M-Restudent/meal'">Add to cart</button>
                </div>
                <div class="card-item">
                    <a href="resources/image/m3.jpg"><img src="resources/image/m3.jpg" alt=""></a>
                    <p>Price: 30</p>
                    <p>Name: Parota 4pcs</p>
                    <button class="cart" style="background-color: green; color: white;" onclick="location.href='/M-Restudent/meal'">Add to cart</button>
                </div>
                <div class="card-item">
                    <a href="resources/image/m4.jpg"><img src="resources/image/m4.jpg" alt=""></a>
                    <p>Price: 40</p>
                    <p>Name: Samosa 8pcs</p>
                    <button class="cart" style="background-color:green; color: white;" onclick="location.href='/M-Restudent/meal'">Add to cart</button>
                </div>
                <div class="card-item">
                    <a href="resources/image/m5.jpg"><img src="resources/image/m5.jpg" alt=""></a>
                    <p>Price: 40</p>
                    <p>Name: Veg-rice</p>
                    <button class="cart" style="background-color: green; color: white;" onclick="location.href='/M-Restudent/meal'">Add to cart</button>
                </div>
                <div class="card-item">
                    <a href="resources/image/m6.jpg"><img src="resources/image/m6.jpg" alt=""></a>
                    <p>Price: 40</p>
                    <p>Name: Luchi</p>
                    <button class="cart" style="background-color: green; color: white;" onclick="location.href='/M-Restudent/meal'">Add to cart</button>
                </div>
                <div class="card-item">
                    <a href="resources/image/m7.jpg"><img src="resources/image/m7.jpg" alt=""></a>
                    <p>Price: 160</p>
                    <p>Name: Special-Biryani</p>
                    <button class="cart" style="background-color: green; color: white;" onclick="location.href='/M-Restudent/meal'">Add to cart</button>
                </div>
            </div>
        </div>
    </div>

    <footer class="flex-all-center">
        <p>&copy; 2024 Restudent. All rights reserved.</p>
    </footer>
</body>
</html>