// Function to handle button clicks
document.getElementById('viewControlsBtn').addEventListener('click', function() {
    alert('View Controls button clicked');
});

document.getElementById('viewUsersBtn').addEventListener('click', function() {
    alert('View Users button clicked');
});

document.getElementById('customizeBtn').addEventListener('click', function() {
    alert('Customize Profile button clicked');
});

document.getElementById('backBtn').addEventListener('click', function() {
    window.location.href = 'login.jsp'; // Redirect back to login page
});
