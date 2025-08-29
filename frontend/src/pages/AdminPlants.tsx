import React, { useEffect, useState } from "react";
import API from "../api";
import { Link } from "react-router-dom";
import { Pencil, Trash2 } from "lucide-react";

export default function AdminPlants() {
  const [plants, setPlants] = useState<any[]>([]);
  const [editingPlant, setEditingPlant] = useState<any | null>(null);

  async function fetchPlants() {
    const res = await API.get("/plants");
    const sorted = res.data.sort(
      (a: any, b: any) =>
        new Date(b.created_at).getTime() - new Date(a.created_at).getTime()
    );
    setPlants(sorted);
  }

  async function deletePlant(id: number) {
    await API.delete(`/plants/${id}`);
    fetchPlants();
  }

  useEffect(() => {
    fetchPlants();
  }, []);

  return (
    <div className="p-6">
      <div className="flex justify-between items-center">
        <h2 className="text-xl font-bold">Data Tanaman</h2>

        <div className="flex space-x-2">
          <button
            onClick={() => {
              localStorage.removeItem("token");
              window.location.href = "/login";
            }}
            className="bg-red-500 text-white px-3 py-2 rounded hover:bg-red-600"
          >
            Logout
          </button>

          <Link
            to="/admin/plants/add"
            className="bg-green-600 text-white px-3 py-2 rounded hover:bg-green-700"
          >
            Tambah Tanaman
          </Link>
        </div>
      </div>

      <table className="w-full mt-6 border">
        <thead>
          <tr className="bg-gray-100">
            <th className="border px-3 py-2">Nama</th>
            <th className="border px-3 py-2">Spesies</th>
            <th className="border px-3 py-2">Lokasi</th>
            <th className="border px-3 py-2">Aksi</th>
          </tr>
        </thead>
        <tbody>
          {plants.map((p) => (
            <tr key={p.id}>
              <td className="border px-3 py-2">{p.nama}</td>
              <td className="border px-3 py-2">{p.spesies}</td>
              <td className="border px-3 py-2">{p.lokasi}</td>
              <td className="border px-3 py-2 text-center">
                <div className="flex items-center justify-center space-x-2">
                  <button
                    onClick={() => setEditingPlant(p)}
                    className="inline-flex items-center justify-center p-2 bg-gray-200 text-black-600 rounded hover:bg-gray-300"
                  >
                    <Pencil className="w-4 h-4" />
                  </button>

                  <button
                    onClick={() => deletePlant(p.id)}
                    className="inline-flex items-center justify-center p-2 bg-red-500 text-white rounded hover:bg-red-600"
                  >
                    <Trash2 className="w-4 h-4" />
                  </button>
                </div>
              </td>
            </tr>
          ))}
          {plants.length === 0 && (
            <tr>
              <td colSpan={4} className="text-center py-4 text-gray-500">
                Belum ada data tanaman
              </td>
            </tr>
          )}
        </tbody>
      </table>
      {editingPlant && (
        <div className="fixed inset-0 flex items-center justify-center bg-black bg-opacity-50">
          <div className="bg-white p-6 rounded shadow-lg w-96">
            <h3 className="text-lg font-bold mb-4">Edit Tanaman</h3>
            <form
              onSubmit={async (e) => {
                e.preventDefault();
                await API.put(`/plants/${editingPlant.id}`, {
                  nama: editingPlant.nama,
                  spesies: editingPlant.spesies,
                  lokasi: editingPlant.lokasi,
                });
                setEditingPlant(null);
                fetchPlants(); // refresh tabel
              }}
              className="space-y-3"
            >
              <input
                value={editingPlant.nama}
                onChange={(e) =>
                  setEditingPlant({ ...editingPlant, nama: e.target.value })
                }
                placeholder="Nama"
                className="border w-full px-2 py-1"
              />
              <input
                value={editingPlant.spesies}
                onChange={(e) =>
                  setEditingPlant({ ...editingPlant, spesies: e.target.value })
                }
                placeholder="Spesies"
                className="border w-full px-2 py-1"
              />
              <input
                value={editingPlant.lokasi}
                onChange={(e) =>
                  setEditingPlant({ ...editingPlant, lokasi: e.target.value })
                }
                placeholder="Lokasi"
                className="border w-full px-2 py-1"
              />
              <div className="flex justify-end space-x-2">
                <button
                  type="button"
                  onClick={() => setEditingPlant(null)}
                  className="px-3 py-1 border rounded"
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  className="px-3 py-1 bg-green-500 text-white rounded"
                >
                  Save
                </button>
              </div>
            </form>
          </div>
        </div>
      )}
    </div>
  );
}
