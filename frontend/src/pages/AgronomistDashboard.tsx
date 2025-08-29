import React from "react";
import { useNavigate } from "react-router-dom";

export default function AgronomistDashboard() {
  const navigate = useNavigate();

  function handleLogout() {
    localStorage.removeItem("token");
    navigate("/login");
  }
  return (
    <div className="flex items-center justify-center min-h-screen bg-yellow-50">
      <div className="bg-white shadow-lg rounded-2xl p-8 max-w-md text-center">
        <h1 className="text-3xl font-bold text-green-700 mb-4">
          Welcome Agronomist
        </h1>
        <p className="text-gray-600 mb-6">
          You are logged in as <span className="font-semibold">Agronomist</span>.
        </p>

        <button
          onClick={handleLogout}
          className="mt-3 px-4 py-1.5 bg-red-500 text-white rounded-lg shadow hover:bg-red-600 transition text-sm"
        >
          Logout
        </button>
      </div>
    </div>
  );
}
