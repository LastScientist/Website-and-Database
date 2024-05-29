// Function to handle button clicks
document.getElementById('createTournamentBtn').addEventListener('click', function() {
    alert('Create Tournament button clicked');
});

document.getElementById('editTournamentBtn').addEventListener('click', function() {
    alert('Edit Tournament button clicked');
});

document.getElementById('customizeBtn').addEventListener('click', function() {
    alert('Customize Profile button clicked');
});

document.getElementById('backBtn').addEventListener('click', function() {
    window.location.href = 'login.jsp'; // Redirect back to login page
});
