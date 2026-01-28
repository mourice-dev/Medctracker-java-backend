<!-- @format -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>MedicTrack - Hospital Management System</title>
    <script src="https://cdn.tailwindcss.com"></script>
  </head>
  <body class="bg-gray-100">
    <nav class="bg-blue-600 p-4 text-white shadow-md">
      <div class="container mx-auto flex justify-between items-center">
        <h1 class="text-2xl font-bold">MedicTrack</h1>
        <div>
          <a href="#" class="px-3 hover:text-blue-200">Home</a>
          <a href="#" class="px-3 hover:text-blue-200">Login</a>
          <a href="#" class="px-3 hover:text-blue-200">Contact</a>
        </div>
      </div>
    </nav>

    <div class="container mx-auto mt-10 p-6 bg-white rounded-lg shadow-lg">
      <h2 class="text-3xl font-bold text-gray-800 mb-4">
        Welcome to MedicTrack
      </h2>
      <p class="text-gray-600 mb-6">
        A comprehensive Hospital Management System to efficiently manage
        patients, appointments, and medical records.
      </p>
      <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
        <div class="p-4 border rounded shadow hover:shadow-md transition">
          <h3 class="text-xl font-semibold mb-2">Patients</h3>
          <p>Register and manage patient records easily.</p>
        </div>
        <div class="p-4 border rounded shadow hover:shadow-md transition">
          <h3 class="text-xl font-semibold mb-2">Doctors</h3>
          <p>Find doctors and manage schedules.</p>
        </div>
        <div class="p-4 border rounded shadow hover:shadow-md transition">
          <h3 class="text-xl font-semibold mb-2">Appointments</h3>
          <p>Book and track medical appointments.</p>
        </div>
      </div>
    </div>

    <footer class="mt-10 py-6 bg-gray-800 text-center text-white">
      <p>&copy; 2026 MedicTrack. All rights reserved.</p>
    </footer>
  </body>
</html>
