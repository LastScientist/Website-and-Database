<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendee Dashboard - Tourney Event Pal</title> 
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="banner">
        <div class="user-profile">
            <img src="attendee-profile.jpg" alt="Profile Picture" class="profile-pic">
            <div class="user-info">
                <span class="account-id">ID: 0000000</span>
                <span class="username">Welcome Attendee</span>
                <span class='time'>Current Date and Time: <%= new java.util.Date() %> </span>
            </div>
        </div>
    </header>
    <main>
        <div class="container">
            <div class="buttons">
                <button id="viewMatchesBtn">View Matches</button>
                <button id="viewResultsBtn">View Results</button>
                <button id="customizeBtn">Customize Profile</button>
                <button id="backBtn">Back to Login</button>
            </div>
        </div>
    </main>
    <script src="attendee.js"></script>
</body>
</html>
