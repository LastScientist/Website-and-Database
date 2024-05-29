// Function to handle button clicks
document.getElementById('viewTournamentsBtn').addEventListener('click', function() {
    alert('View Tournaments button clicked');
});

document.getElementById('viewMatchesBtn').addEventListener('click', function() {
    alert('View Upcoming Matches button clicked');
});

document.getElementById('customizeBtn').addEventListener('click', function() {
    alert('Customize Profile button clicked');
});

document.getElementById('backBtn').addEventListener('click', function() {
    window.location.href = 'login.jsp'; // Redirect back to login page
});
