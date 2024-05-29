<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Organizer Dashboard - Tourney Event Pal</title> 
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header class="banner">
        <div class="user-profile">
            <img src="C:\Users\acdeo\eclipse-workspace\Software_Engineering_Final\src\main\webapp\organizer-profile.jpg" alt="Profile Picture" class="profile-pic">
            <div class="user-info">
                <span class="account-id">ID: 0000000</span>
                <span class="username">Welcome Organizer</span>
                <span class='time'>Current Date and Time: <%= new java.util.Date() %> </span>
            </div>
        </div>
    </header>
    <main>
        <div class="container">
            <div class="buttons">
                <button id="createTournamentBtn">Create Tournament</button>
                <button id="editTournamentBtn">Edit Tournament</button>
                <button id="customizeBtn">Customize Profile</button>
                <button id="backBtn">Back to Login</button>
            </div>
        </div>
    </main>
    <script src="organizer.js"></script>
</body>
</html>
