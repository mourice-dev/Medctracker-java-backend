<!-- @format -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.util.*" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Appointments - MedicTrack</title>
            <!-- Tailwind CSS -->
            <script src="https://cdn.tailwindcss.com"></script>
            <!-- Lucide Icons -->
            <script src="https://unpkg.com/lucide@latest"></script>
        </head>

        <body class="bg-slate-50 font-sans text-slate-800 overflow-hidden">
            <div class="flex h-screen bg-slate-50">
                <!-- Sidebar Inclusion -->
                <jsp:include page="components/sidebar.jsp">
                    <jsp:param name="active" value="appointments" />
                </jsp:include>

                <!-- Main Content -->
                <div class="flex-1 flex flex-col h-full overflow-hidden">
                    <!-- Top Header -->
                    <jsp:include page="components/header.jsp" />

                    <!-- Scrollable Content Area -->
                    <main class="flex-1 overflow-y-auto p-6 bg-slate-50">
                        <div class="max-w-7xl mx-auto space-y-6">

                            <% // Mock Data for Appointments List<Map<String, String>> appointments = new ArrayList<>();
                                    Map<String, String> a1 = new HashMap<>(); a1.put("id", "1"); a1.put("time", "09:00
                                            AM"); a1.put("patient", "Sarah Jenkins"); a1.put("type", "Follow-up");
                                            a1.put("doctor", "Dr. Smith"); a1.put("status", "Completed");
                                            appointments.add(a1);
                                            Map<String, String> a2 = new HashMap<>(); a2.put("id", "2"); a2.put("time",
                                                    "10:30 AM"); a2.put("patient", "James Carter"); a2.put("type",
                                                    "Consultation"); a2.put("doctor", "Dr. Alverez"); a2.put("status",
                                                    "In Progress"); appointments.add(a2);
                                                    Map<String, String> a3 = new HashMap<>(); a3.put("id", "3");
                                                            a3.put("time", "01:00 PM"); a3.put("patient", "Linda May");
                                                            a3.put("type", "Lab Review"); a3.put("doctor", "Dr. Rao");
                                                            a3.put("status", "Scheduled"); appointments.add(a3);
                                                            Map<String, String> a4 = new HashMap<>(); a4.put("id", "4");
                                                                    a4.put("time", "02:15 PM"); a4.put("patient",
                                                                    "Marcus Reid"); a4.put("type", "Emergency");
                                                                    a4.put("doctor", "Dr. Smith"); a4.put("status",
                                                                    "Scheduled"); appointments.add(a4);
                                                                    %>

                                                                    <div class="space-y-6">
                                                                        <div class="flex justify-between items-center">
                                                                            <h2
                                                                                class="text-2xl font-bold text-slate-800">
                                                                                Appointment Management</h2>
                                                                            <div class="flex space-x-2">
                                                                                <button
                                                                                    class="bg-white border border-slate-200 text-slate-600 px-4 py-2 rounded-lg text-sm font-medium hover:bg-slate-50">Today</button>
                                                                                <button
                                                                                    class="bg-teal-600 text-white px-4 py-2 rounded-lg text-sm font-medium hover:bg-teal-700 shadow-lg shadow-teal-600/20">+
                                                                                    New Appointment</button>
                                                                            </div>
                                                                        </div>

                                                                        <div
                                                                            class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                                                                            <% for(Map<String, String> apt :
                                                                                appointments) {
                                                                                String statusColor = "bg-gray-100
                                                                                text-gray-600";
                                                                                String status = apt.get("status");
                                                                                if("Completed".equals(status))
                                                                                statusColor = "bg-green-100
                                                                                text-green-700";
                                                                                else if("In Progress".equals(status))
                                                                                statusColor = "bg-blue-100
                                                                                text-blue-700";
                                                                                else if("Scheduled".equals(status))
                                                                                statusColor = "bg-slate-100
                                                                                text-slate-700";
                                                                                %>
                                                                                <div
                                                                                    class="bg-white p-5 rounded-xl border border-slate-200 shadow-sm flex flex-col hover:border-teal-200 transition duration-200">
                                                                                    <div
                                                                                        class="flex justify-between items-start mb-4">
                                                                                        <div
                                                                                            class="bg-blue-50 text-blue-700 px-3 py-1 rounded-md text-sm font-bold flex items-center">
                                                                                            <i data-lucide="clock"
                                                                                                width="14"
                                                                                                class="mr-1"></i>
                                                                                            <%= apt.get("time") %>
                                                                                        </div>
                                                                                        <span
                                                                                            class="px-2.5 py-0.5 rounded-full text-xs font-semibold <%= statusColor %>">
                                                                                            <%= status %>
                                                                                        </span>
                                                                                    </div>
                                                                                    <h3
                                                                                        class="text-lg font-bold text-slate-800">
                                                                                        <%= apt.get("patient") %>
                                                                                    </h3>
                                                                                    <p
                                                                                        class="text-slate-500 text-sm mb-4">
                                                                                        <%= apt.get("type") %>
                                                                                    </p>
                                                                                    <div
                                                                                        class="mt-auto pt-4 border-t border-slate-100 flex items-center justify-between">
                                                                                        <div
                                                                                            class="flex items-center text-sm text-slate-600">
                                                                                            <i data-lucide="stethoscope"
                                                                                                width="16"
                                                                                                class="mr-2 text-teal-600"></i>
                                                                                            <%= apt.get("doctor") %>
                                                                                        </div>
                                                                                        <button
                                                                                            class="text-teal-600 hover:text-teal-800 text-sm font-medium hover:underline">Details</button>
                                                                                    </div>
                                                                                </div>
                                                                                <% } %>
                                                                        </div>
                                                                    </div>

                        </div>
                    </main>
                </div>
            </div>
            <script>
                lucide.createIcons();
            </script>
        </body>

        </html>