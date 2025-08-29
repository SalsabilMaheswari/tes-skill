import React, { useState } from "react";
import API from "../api";
import { useNavigate } from "react-router-dom";

export default function AdminAddPlant() {
  const navigate = useNavigate();
  const [form, setForm] = useState({ nama: "", spesies: "", lokasi: "" });

  async function createPlant(e: React.FormEvent) {
    e.preventDefault();
    await API.post("/plants", form);
    setForm({ nama: "", spesies: "", lokasi: "" });
    navigate("/admin/plants");
  }

  return (
    <div className="p-6">
      <h2 className="text-xl font-bold">Tambah Tanaman</h2>
      <form onSubmit={createPlant} className="space-y-4 mt-4">
        <input
          value={form.nama}
          onChange={(e) => setForm({ ...form, nama: e.target.value })}
          placeholder="Nama"
          className="border px-2 py-1 block w-full"
        />
        <input
          value={form.spesies}
          onChange={(e) => setForm({ ...form, spesies: e.target.value })}
          placeholder="Spesies"
          className="border px-2 py-1 block w-full"
        />
        <input
          value={form.lokasi}
          onChange={(e) => setForm({ ...form, lokasi: e.target.value })}
          placeholder="Lokasi"
          className="border px-2 py-1 block w-full"
        />
        <button type="submit" className="bg-green-500 text-white px-3 py-1">
          Simpan
        </button>
      </form>
    </div>
  );
}
