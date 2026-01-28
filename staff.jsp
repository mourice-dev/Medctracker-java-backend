<!-- @format -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ page import="java.util.*" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <title>Staff - MedicTrack</title>
            <!-- Tailwind CSS -->
            <script src="https://cdn.tailwindcss.com"></script>
            <!-- Lucide Icons -->
            <script src="https://unpkg.com/lucide@latest"></script>
        </head>

        <body class="bg-slate-50 font-sans text-slate-800 overflow-hidden">
            <div class="flex h-screen bg-slate-50">
                <!-- Sidebar Inclusion -->
                <jsp:include page="components/sidebar.jsp">
                    <jsp:param name="active" value="staff" />
                </jsp:include>

                <!-- Main Content -->
                <div class="flex-1 flex flex-col h-full overflow-hidden">
                    <!-- Top Header -->
                    <jsp:include page="components/header.jsp" />

                    <!-- Scrollable Content Area -->
                    <main class="flex-1 overflow-y-auto p-6 bg-slate-50">
                        <div class="max-w-7xl mx-auto space-y-6">

                            <% // Mock Data for Staff List<Map<String, String>> staffList = new ArrayList<>();
                                    Map<String, String> s1 = new HashMap<>(); s1.put("id", "1"); s1.put("name", "Dr. Ayesha Rao"); s1.put("role", "Cardiologist"); s1.put("department",
                                            "Cardiology"); s1.put("shift", "08:00 - 16:00"); s1.put("status", "On Duty"); staffList.add(s1);
                                            Map<String, String> s2 = new HashMap<>(); s2.put("id", "2"); s2.put("name",
                                                    "Dr. John Smith"); s2.put("role", "General Practitioner");
                                                    s2.put("department", "General Medicine"); s2.put("shift", "09:00 - 17:00"); s2.put("status", "In Surgery"); staffList.add(s2);
                                                    Map<String, String> s3 = new HashMap<>(); s3.put("id", "3");
                                                            s3.put("name", "Nurse Clara Wu"); s3.put("role", "Senior Nurse"); s3.put("department", "ER"); s3.put("shift", "07:00 - 19:00"); s3.put("status", "On Duty"); staffList.add(s3);
                                                            Map<String, String> s4 = new HashMap<>(); s4.put("id", "4");
                                                                    s4.put("name", "Dr. Luis Alverez"); s4.put("role",
                                                                    "Neurologist"); s4.put("department", "Neurology");
                                                                    s4.put("shift", "10:00 - 18:00"); s4.put("status",
                                                                    "On Break"); staffList.add(s4);
                                                                    %>

                                                                    <div
                                                                        class="bg-white rounded-xl shadow-sm border border-slate-100">
                                                                        <div
                                                                            class="p-6 border-b border-slate-100 flex justify-between items-center">
                                                                            <h2
                                                                                class="text-lg font-bold text-slate-800">
                                                                                Medical Staff Directory</h2>
                                                                            <div class="relative">
                                                                                <i data-lucide="search"
                                                                                    class="absolute left-3 top-2.5 text-slate-400"
                                                                                    width="18"></i>
                                                                                <input type="text"
                                                                                    placeholder="Search staff..."
                                                                                    class="pl-10 pr-4 py-2 border border-slate-200 rounded-lg text-sm focus:outline-none focus:border-teal-500 w-64 bg-slate-50 focus:bg-white transition" />
                                                                            </div>
                                                                        </div>
                                                                        <div
                                                                            class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 p-6">
                                                                            <% for(Map<String, String> staff :
                                                                                staffList) {
                                                                                String statusColor = "bg-gray-100
                                                                                text-gray-600";
                                                                                String status = staff.get("status");
                                                                                if("On Duty".equals(status)) statusColor
                                                                                = "bg-green-100 text-green-700";
                                                                                else if("In Surgery".equals(status))
                                                                                statusColor = "bg-purple-100
                                                                                text-purple-700";
                                                                                else if("On Break".equals(status))
                                                                                statusColor = "bg-orange-100
                                                                                text-orange-700";

                                                                                String initial = "";
                                                                                if(staff.get("name") != null) initial =
                                                                                staff.get("name").split("
                                                                                ")[1].substring(0,1);
                                                                                %>
                                                                                <div
                                                                                    class="border border-slate-200 rounded-xl p-4 flex items-start space-x-4 hover:shadow-md transition bg-gradient-to-br from-white to-slate-50/50">
                                                                                    <div
                                                                                        class="h-12 w-12 rounded-full bg-indigo-100 flex items-center justify-center text-indigo-700 font-bold text-lg">
                                                                                        <%= initial %>
                                                                                    </div>
                                                                                    <div class="flex-1">
                                                                                        <h4
                                                                                            class="font-bold text-slate-800">
                                                                                            <%= staff.get("name") %>
                                                                                        </h4>
                                                                                        <p
                                                                                            class="text-xs text-slate-500 uppercase tracking-wide mb-1">
                                                                                            <%= staff.get("role") %>
                                                                                        </p>
                                                                                        <p
                                                                                            class="text-sm text-slate-600 mb-2">
                                                                                            <%= staff.get("department")
                                                                                                %>
                                                                                        </p>
                                                                                        <div
                                                                                            class="flex items-center justify-between mt-3">
                                                                                            <span
                                                                                                class="text-xs text-slate-400 bg-slate-100 px-2 py-1 rounded">
                                                                                                <%= staff.get("shift")
                                                                                                    %>
                                                                                            </span>
                                                                                            <span
                                                                                                class="px-2.5 py-0.5 rounded-full text-xs font-semibold <%= statusColor %>">
                                                                                                <%= status %>
                                                                                            </span>
                                                                                        </div>
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