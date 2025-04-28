function toggleDropdown() {
  const dropdown = document.getElementById('userDropdown');
  dropdown.style.display = (dropdown.style.display === 'block') ? 'none' : 'block';
}

window.addEventListener('click', function(e) {
  const dropdown = document.getElementById('userDropdown');
  const toggle = document.querySelector('.dropdown-toggle');
  if (!toggle.contains(e.target) && !dropdown.contains(e.target)) {
    dropdown.style.display = 'none';
  }
});