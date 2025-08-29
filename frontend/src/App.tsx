import React, { useContext } from "react";
import { BrowserRouter, Routes, Route, Link } from "react-router-dom";
import Register from "./pages/Register";
import Login from "./pages/Login";
import AdminPlants from "./pages/AdminPlants";
import { AuthProvider, AuthContext } from "./contexts/AuthContext";
import ProtectedRoute from "./components/ProtectedRoute";
import AdminAddPlant from "./pages/AdminAddPlant";
import FarmerDashboard from "./pages/FarmerDashboard";
import AgronomistDashboard from "./pages/AgronomistDashboard";


function Navbar() {
  const { user, logout } = useContext(AuthContext);
  return (
    <nav className="flex justify-between items-center p-4 bg-gray-100">
      {" "}
      <div className="space-x-4">
        {user?.role === "admin" && <Link to="/admin">Admin Home</Link>}{" "}
        {user?.role === "agronomist" && (
          <Link to="/agronomist">Agronomist Home</Link>
        )}{" "}
        {user?.role === "farmer" && <Link to="/farmer/plants">My Plants</Link>}{" "}
      </div>{" "}
      <div>
        {" "}
        {!user ? (
          <>
            <Link to="/register">Register</Link> |{" "}
            <Link to="/login">Login</Link>         {" "}
          </>
        ) : (
          <>
            <span className="mr-2">{user.username}</span>           {" "}
            <button
              onClick={logout}
              className="px-2 py-1 bg-red-500 text-white rounded"
            >
              Logout            {" "}
            </button>{" "}
          </>
        )}{" "}
      </div>{" "}
    </nav>
  );
}

export default function App() {
  return (
    <AuthProvider>
      <BrowserRouter>
        <Routes>
          {/* Public routes */}
          <Route path="/" element={<Login />} />
          <Route path="/login" element={<Login />} />
          <Route path="/register" element={<Register />} />
          {/* Protected routes */}
          <Route
            path="/admin/plants"
            element={
              <ProtectedRoute allowedRoles={["admin"]}>
                <AdminPlants />
              </ProtectedRoute>
            }
          />
          <Route
            path="/admin/plants/add"
            element={
              <ProtectedRoute allowedRoles={["admin"]}>
                <AdminAddPlant />
              </ProtectedRoute>
            }
          />
          <Route
            path="/agronomist"
            element={
              <ProtectedRoute allowedRoles={["agronomist"]}>
                <AgronomistDashboard />
              </ProtectedRoute>
            }
          />
          <Route
            path="/farmer"
            element={
              <ProtectedRoute allowedRoles={["farmer"]}>
                <FarmerDashboard/>
              </ProtectedRoute>
            }
          />
        </Routes>
      </BrowserRouter>
    </AuthProvider>
  );
}
