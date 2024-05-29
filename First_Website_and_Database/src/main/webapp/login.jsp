<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tourney Event Pal - Login</title> 
    <link rel="stylesheet" href="styleslogin.css">
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            if (username === "" && password === "") {
                document.getElementById("error").innerHTML = "Please enter username and password.";
                return false;
            } else if (username === "") {
                document.getElementById("error").innerHTML = "Please enter username.";
                return false;
            } else if (password === "") {
                document.getElementById("error").innerHTML = "Please enter password.";
                return false;
            } else {
                document.getElementById("error").innerHTML = "";
                return true;
            }
        }
    </script>
</head>
<body>
    <div class="login-container">
        <h2 style="font-size: 30px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif"> Tourney Event Pal Login</h2>
        <form action="LoginServlet" method="post" onsubmit="return validateForm()">
            <input type="text" id="username" name="username" placeholder="Username">
            <span id="usernameError" style="color: red;"></span><br>
            <input type="password" id="password" name="password" placeholder="Password">
            <span id="passwordError" style="color: red;"></span><br>
            <div class="role-selector">
                <label for="role" style="font-size: 20px; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;">Select Role:</label>
                <select name="role">
                    <option value="attendee">Attendee</option>
                    <option value="organizer">Organizer</option>
                    <option value="participant">Participant</option>
                    <option value="admin">Admin</option>
                </select>
            </div>
            <button id="loginBtn">Login</button>
        </form>
        <span id="error" style="color: red;">
            <% String errorMessage = (String) request.getAttribute("error"); %>
            <%= errorMessage != null ? errorMessage : "" %>
        </span>
    </div>

    <script src="scriptlogin.js"></script>
</body>
</html>
