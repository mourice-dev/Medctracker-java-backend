<!-- @format -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <aside
    class="fixed inset-y-0 left-0 z-30 w-64 bg-white border-r border-slate-200 transform transition-transform duration-300 ease-in-out md:relative md:translate-x-0"
    id="sidebar">
    <div class="h-16 flex items-center px-6 border-b border-slate-100">
      <div class="flex items-center text-teal-600">
        <div class="bg-teal-600 text-white p-1.5 rounded-lg mr-2 shadow-sm">
          <i data-lucide="activity" width="20" height="20"></i>
        </div>
        <span class="text-xl font-bold tracking-tight text-slate-800">Medic<span
            class="text-teal-600">Track</span></span>
      </div>
    </div>

    <div class="py-6 flex flex-col justify-between h-[calc(100%-4rem)]">
      <nav class="space-y-1">
        <a href="dashboard.jsp"
          class="flex items-center w-full px-6 py-3 text-sm font-medium transition-colors duration-200 ${param.active == 'dashboard' ? 'text-teal-600 bg-teal-50 border-r-4 border-teal-600' : 'text-slate-500 hover:text-slate-800 hover:bg-slate-50'}">
          <i data-lucide="layout-dashboard" width="20" class="mr-3"></i>
          Dashboard
        </a>
        <a href="patients.jsp"
          class="flex items-center w-full px-6 py-3 text-sm font-medium transition-colors duration-200 ${param.active == 'patients' ? 'text-teal-600 bg-teal-50 border-r-4 border-teal-600' : 'text-slate-500 hover:text-slate-800 hover:bg-slate-50'}">
          <i data-lucide="users" width="20" class="mr-3"></i>
          Patients
        </a>
        <a href="appointments.jsp"
          class="flex items-center w-full px-6 py-3 text-sm font-medium transition-colors duration-200 ${param.active == 'appointments' ? 'text-teal-600 bg-teal-50 border-r-4 border-teal-600' : 'text-slate-500 hover:text-slate-800 hover:bg-slate-50'}">
          <i data-lucide="calendar" width="20" class="mr-3"></i>
          Appointments
        </a>
        <a href="staff.jsp"
          class="flex items-center w-full px-6 py-3 text-sm font-medium transition-colors duration-200 ${param.active == 'staff' ? 'text-teal-600 bg-teal-50 border-r-4 border-teal-600' : 'text-slate-500 hover:text-slate-800 hover:bg-slate-50'}">
          <i data-lucide="stethoscope" width="20" class="mr-3"></i>
          Staff
        </a>
        <a href="reports.jsp"
          class="flex items-center w-full px-6 py-3 text-sm font-medium transition-colors duration-200 ${param.active == 'reports' ? 'text-teal-600 bg-teal-50 border-r-4 border-teal-600' : 'text-slate-500 hover:text-slate-800 hover:bg-slate-50'}">
          <i data-lucide="file-text" width="20" class="mr-3"></i>
          Reports
        </a>
      </nav>

      <div class="px-6">
        <div class="bg-gradient-to-br from-teal-50 to-teal-100 rounded-xl p-4 mb-6 border border-teal-100">
          <h4 class="text-teal-900 font-bold text-sm mb-1">Upgrade Plan</h4>
          <p class="text-teal-700 text-xs mb-3 opacity-80">
            Get access to AI Analytics.
          </p>
          <button class="w-full bg-teal-600 hover:bg-teal-700 text-white text-xs py-2 rounded-lg transition shadow-sm">
            Upgrade Now
          </button>
        </div>
        <a href="login.jsp"
          class="flex items-center w-full px-4 py-2 text-sm font-medium text-slate-500 hover:text-rose-600 transition-colors">
          <i data-lucide="log-out" width="18" class="mr-3"></i>
          Sign Out
        </a>
      </div>
    </div>
  </aside>