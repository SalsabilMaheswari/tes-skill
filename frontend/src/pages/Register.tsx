import React, { useState, ChangeEvent, FormEvent } from "react";
import API from "../api";
import { useNavigate } from "react-router-dom";
import "../index.css";


interface RegisterForm {
  username: string;
  email: string;
  password: string;
  role_id: string;
  extra?: Record<string, any>;
}

export default function Register() {
  const [form, setForm] = useState<RegisterForm>({
    username: "",
    email: "",
    password: "",
    role_id: "",
    extra: {},
  });

  const [msg, setMsg] = useState("");
  const navigate = useNavigate();

  function onChange(e: ChangeEvent<HTMLInputElement | HTMLSelectElement>) {
    const { name, value } = e.target;
    setForm((prev) => ({ ...prev, [name]: value }));
  }

  async function submit(e: FormEvent<HTMLFormElement>) {
    e.preventDefault();
    try {
      await API.post("/auth/register", form);
      setMsg("Registered! Please login.");
      setTimeout(() => navigate("/login"), 1000);
    } catch (err: any) {
      setMsg(err.response?.data?.message || "Error");
    }
  }

  return (
    <div className="flex items-center justify-center min-h-screen bg-gray-100">
      <div className="w-full max-w-md p-8 space-y-6 bg-white rounded-2xl shadow-md">
        <h2 className="text-2xl font-bold text-center text-gray-800">
          Create an Account
        </h2>

        <form onSubmit={submit} className="space-y-4">
          <input
            name="username"
            placeholder="Username"
            value={form.username}
            onChange={onChange}
            className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-indigo-500 focus:outline-none"
          />
          <input
            name="email"
            placeholder="Email"
            value={form.email}
            onChange={onChange}
            className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-indigo-500 focus:outline-none"
          />
          <input
            name="password"
            type="password"
            placeholder="Password"
            value={form.password}
            onChange={onChange}
            className="w-full px-4 py-2 border border-gray-300 rounded-lg focus:ring-2 focus:ring-indigo-500 focus:outline-none"
          />
          <select
            name="role_id"
            value={form.role_id}
            onChange={onChange}
            required
            className="w-full px-4 py-2 border border-gray-300 rounded-lg bg-white focus:ring-2 focus:ring-indigo-500 focus:outline-none"
          >
            <option value="" disabled>
              Select Roles
            </option>
            <option value="2">Farmer</option>
            <option value="3">Agronomist</option>
          </select>

          <button
            type="submit"
            className="w-full px-4 py-2 font-semibold text-white bg-indigo-600 rounded-lg hover:bg-indigo-700 transition duration-200"
          >
            Register
          </button>
        </form>
        {msg && (
          <p
            className={`text-center text-sm ${
              msg.includes("Error") ? "text-red-500" : "text-green-600"
            }`}
          >
            {msg}
          </p>
        )}

        <p className="text-sm text-center text-gray-600">
          Sudah punya akun?{" "}
          <span
            onClick={() => navigate("/login")}
            className="text-indigo-600 cursor-pointer hover:underline"
          >
            Login
          </span>
        </p>
      </div>
    </div>
  );
}
