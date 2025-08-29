import React, { useState, useContext, ChangeEvent, FormEvent } from "react";
import API from "../api";
import { AuthContext, User } from "../contexts/AuthContext";
import { useNavigate, Link } from "react-router-dom";
import '../index.css';

interface LoginForm {
  email: string;
  password: string;
}

export default function Login() {
  const [form, setForm] = useState<LoginForm>({ email: "", password: "" });
  const [msg, setMsg] = useState("");
  const { setUser } = useContext(AuthContext);
  const navigate = useNavigate();

  function onChange(e: ChangeEvent<HTMLInputElement>) {
    setForm((prev) => ({ ...prev, [e.target.name]: e.target.value }));
  }

  async function submit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    try {
      const res = await API.post("/auth/login", form);
      const { token, user } = res.data as { token: string; user: User };
      localStorage.setItem("token", token);
      setUser(user);

      if (user.role === "admin") navigate("/admin/plants");
      else if (user.role === "farmer") navigate("/farmer");
      else if (user.role === "agronomist") navigate("/agronomist");
      else navigate("/");
    } catch (err: any) {
      setMsg(err.response?.data?.message || "Login failed");
    }
  }

  return (
    <div className="flex items-center justify-center min-h-screen bg-gray-100">
      <div className="w-full max-w-md p-6 bg-white rounded-2xl shadow-lg">
        <h2 className="text-2xl font-bold text-center text-gray-800 mb-6">
          Login
        </h2>

        {msg && <p className="mb-4 text-sm text-red-500 text-center">{msg}</p>}

        <form onSubmit={submit} className="space-y-4">
          <input
            name="email"
            type="email"
            placeholder="Email"
            value={form.email}
            onChange={onChange}
            className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring focus:ring-green-400"
          />
          <input
            name="password"
            type="password"
            placeholder="Password"
            value={form.password}
            onChange={onChange}
            className="w-full px-4 py-2 border rounded-lg focus:outline-none focus:ring focus:ring-green-400"
          />
          <button
            type="submit"
            className="w-full bg-green-600 text-white py-2 rounded-lg hover:bg-green-700 transition"
          >
            Login
          </button>
        </form>

        <p className="mt-4 text-sm text-center text-gray-600">
          Belum punya akun?{" "}
          <Link to="/register" className="text-green-600 hover:underline">
            Register
          </Link>
        </p>
      </div>
    </div>
  );
}
