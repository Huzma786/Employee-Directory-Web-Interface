document.getElementById('employeeForm').addEventListener('submit', function (e) {
  e.preventDefault();
  const emp = {
    id: Date.now(),
    firstName: document.getElementById('firstName').value.trim(),
    lastName: document.getElementById('lastName').value.trim(),
    email: document.getElementById('email').value.trim(),
    department: document.getElementById('department').value.trim(),
    role: document.getElementById('role').value.trim()
  };

  if (!validateEmail(emp.email)) {
    alert("Invalid email format.");
    return;
  }

  console.log("Saved:", emp);
  alert("Employee saved successfully!");
  window.location.href = "index.ftl";
});

function validateEmail(email) {
  return /\S+@\S+\.\S+/.test(email);
}
