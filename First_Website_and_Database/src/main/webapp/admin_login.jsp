<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Tourney Event Pal</title> 
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="banner">
        <div class="user-profile">
            <img src="Admin-profile.jpg" alt="Profile Picture" class="profile-pic">
            <div class="user-info">
                <span class="account-id">ID: 0000000</span>
                <span class="username">Username: Admin</span>
                <span class="time">Current Date and Time: <%= new java.util.Date() %> </span>
            </div>
        </div>
    </header>
    <main>
        <div class="container">
            <div class="buttons">
                <button id="viewControlsBtn">View Controls</button>
                <button id="viewUsersBtn">View Users</button>
                <button id="customizeBtn">Customize Profile</button>
                <button id="backBtn">Back to Login</button>
            </div>
        </div>
    </main>
    <script src="admin.js"></script>
</body>
</html>
