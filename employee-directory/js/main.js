function deleteEmployee(id) {
  alert(`Employee with ID ${id} deleted.`);
  // Logic to remove from array in memory (if dynamically used)
}

function editEmployee(id) {
  window.location.href = `form.ftl?id=${id}`;
}

document.getElementById('searchInput').addEventListener('input', function (e) {
  const keyword = e.target.value.toLowerCase();
  const cards = document.querySelectorAll('.employee-card');
  cards.forEach(card => {
    const name = card.querySelector('h3').textContent.toLowerCase();
    const email = card.querySelector('p:nth-child(2)').textContent.toLowerCase();
    card.style.display = (name.includes(keyword) || email.includes(keyword)) ? '' : 'none';
  });
});
