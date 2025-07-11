<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Employee Dashboard</title>
  <link rel="stylesheet" href="css/styles.css" />
</head>
<body>
  <div class="header">
    <h1>Employee Directory</h1>
    <input type="text" id="searchInput" placeholder="Search by name or email..." />
    <button onclick="window.location.href='form.ftl'">Add Employee</button>
  </div>

  <div class="filter-sort">
    <!-- Add your filter/sort dropdowns here -->
  </div>

  <div id="employeeList" class="employee-grid">
    <#list employees as emp>
      <div class="employee-card">
        <h3>${emp.firstName} ${emp.lastName}</h3>
        <p><strong>Email:</strong> ${emp.email}</p>
        <p><strong>Dept:</strong> ${emp.department}</p>
        <p><strong>Role:</strong> ${emp.role}</p>
        <button onclick="editEmployee(${emp.id})">Edit</button>
        <button onclick="deleteEmployee(${emp.id})">Delete</button>
      </div>
    </#list>
  </div>

  <script src="js/data.js"></script>
  <script src="js/main.js"></script>
</body>
</html>
