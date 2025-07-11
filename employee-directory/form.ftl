<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Add/Edit Employee</title>
  <link rel="stylesheet" href="css/styles.css" />
</head>
<body>
  <h2 id="formTitle">Add Employee</h2>
  <form id="employeeForm">
    <input type="hidden" id="empId" />
    <label>First Name: <input type="text" id="firstName" required /></label>
    <label>Last Name: <input type="text" id="lastName" required /></label>
    <label>Email: <input type="email" id="email" required /></label>
    <label>Department: <input type="text" id="department" required /></label>
    <label>Role: <input type="text" id="role" required /></label>

    <button type="submit">Save</button>
    <button type="button" onclick="window.location.href='index.ftl'">Cancel</button>
  </form>

  <script src="js/form.js"></script>
</body>
</html>
