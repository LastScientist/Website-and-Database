// Function to handle button clicks
document.getElementById('viewMatchesBtn').addEventListener('click', function() {
    alert('View Live Matches button clicked');
});

document.getElementById('viewResultsBtn').addEventListener('click', function() {
    alert('View Results button clicked');
});

document.getElementById('customizeBtn').addEventListener('click', function() {
    alert('Customize Profile button clicked');
});

document.getElementById('backBtn').addEventListener('click', function() {
    window.location.href = 'login.jsp'; // Redirect back to login page
});
