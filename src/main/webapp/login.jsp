<!-- @format -->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - MedicTrack</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Lucide Icons -->
    <script src="https://unpkg.com/lucide@latest"></script>
  </head>
  <body class="bg-slate-50">
    <div class="min-h-screen flex bg-slate-50">
      <!-- Left Side - Brand & Info -->
      <div
        class="hidden lg:flex lg:w-1/2 bg-teal-600 text-white flex-col justify-between p-12 relative overflow-hidden">
        <div
          class="absolute top-0 right-0 w-64 h-64 bg-teal-500 rounded-bl-full opacity-50"></div>
        <div
          class="absolute bottom-0 left-0 w-48 h-48 bg-teal-700 rounded-tr-full opacity-50"></div>

        <div class="relative z-10">
          <div class="flex items-center space-x-3 mb-8">
            <div class="bg-white/20 p-2 rounded-lg backdrop-blur-sm">
              <i
                data-lucide="activity"
                class="text-white"
                width="32"
                height="32"></i>
            </div>
            <span class="text-3xl font-bold tracking-tight">MedicTrack</span>
          </div>
          <h1 class="text-4xl font-bold leading-tight mb-4">
            Streamline Your Healthcare Operations
          </h1>
          <p class="text-teal-100 text-lg max-w-md">
            Manage patients, staff, and appointments with our comprehensive
            healthcare management system designed for modern facilities.
          </p>
        </div>

        <div class="relative z-10 space-y-6">
          <div
            class="flex items-center space-x-4 bg-teal-700/30 p-4 rounded-xl backdrop-blur-sm border border-teal-500/30">
            <div class="bg-teal-500/20 p-2 rounded-lg">
              <i
                data-lucide="check-circle"
                class="text-teal-200"
                width="24"></i>
            </div>
            <div>
              <h3 class="font-semibold">HIPAA Compliant</h3>
              <p class="text-sm text-teal-100">Secure patient data handling</p>
            </div>
          </div>
          <p class="text-sm text-teal-200">© 2026 MedicTrack Systems Inc.</p>
        </div>
      </div>

      <!-- Right Side - Login Form -->
      <div
        class="w-full lg:w-1/2 flex flex-col justify-center items-center p-8 lg:p-12">
        <div class="w-full max-w-md space-y-8">
          <!-- Mobile Logo -->
          <div
            class="lg:hidden flex items-center justify-center text-teal-600 mb-8">
            <div class="bg-teal-600 text-white p-2 rounded-xl mr-3 shadow-lg">
              <i data-lucide="activity" width="32" height="32"></i>
            </div>
            <span class="text-3xl font-bold tracking-tight text-slate-800"
              >Medic<span class="text-teal-600">Track</span></span
            >
          </div>

          <div class="text-center lg:text-left">
            <h2 class="text-3xl font-bold text-slate-900">Welcome back</h2>
            <p class="mt-2 text-slate-500">
              Please enter your details to sign in.
            </p>
          </div>

          <!-- Form -->
          <form action="dashboard.jsp" method="get" class="mt-8 space-y-6">
            <div class="space-y-5">
              <div>
                <label class="block text-sm font-medium text-slate-700 mb-1"
                  >Email address</label
                >
                <div class="relative">
                  <div
                    class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="mail" class="h-5 w-5 text-slate-400"></i>
                  </div>
                  <input
                    type="email"
                    name="email"
                    value="admin@medictrack.com"
                    class="block w-full pl-10 pr-3 py-3 border border-slate-200 rounded-xl focus:ring-2 focus:ring-teal-500 focus:border-teal-500 bg-slate-50 focus:bg-white transition-all outline-none"
                    placeholder="Enter your email" />
                </div>
              </div>

              <div>
                <label class="block text-sm font-medium text-slate-700 mb-1"
                  >Password</label
                >
                <div class="relative">
                  <div
                    class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                    <i data-lucide="lock" class="h-5 w-5 text-slate-400"></i>
                  </div>
                  <input
                    type="password"
                    name="password"
                    value="password123"
                    class="block w-full pl-10 pr-3 py-3 border border-slate-200 rounded-xl focus:ring-2 focus:ring-teal-500 focus:border-teal-500 bg-slate-50 focus:bg-white transition-all outline-none"
                    placeholder="Enter your password" />
                </div>
              </div>
            </div>

            <div class="flex items-center justify-between">
              <div class="flex items-center">
                <input
                  type="checkbox"
                  class="h-4 w-4 text-teal-600 focus:ring-teal-500 border-slate-300 rounded" />
                <label class="ml-2 block text-sm text-slate-600"
                  >Remember me</label
                >
              </div>
              <div class="text-sm">
                <a
                  href="#"
                  class="font-medium text-teal-600 hover:text-teal-500"
                  >Forgot password?</a
                >
              </div>
            </div>

            <button
              type="submit"
              class="group relative w-full flex justify-center py-3 px-4 border border-transparent text-sm font-bold rounded-xl text-white bg-teal-600 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-teal-500 shadow-lg shadow-teal-600/30 transition-all active:scale-[0.98]">
              Sign in
              <i
                data-lucide="arrow-right"
                class="ml-2 h-4 w-4 group-hover:translate-x-1 transition-transform"></i>
            </button>
          </form>

          <p class="text-center text-sm text-slate-500">
            Don't have an account?
            <a href="#" class="font-bold text-teal-600 hover:text-teal-500"
              >Contact Administration</a
            >
          </p>
        </div>
      </div>
    </div>
    <script>
      lucide.createIcons();
    </script>
  </body>
</html>
