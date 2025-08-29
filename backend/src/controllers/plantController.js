import { Plant, User } from "../models/index.js";


export const createPlant = async (req, res) => {
  try {
    const { nama, spesies, lokasi } = req.body;
    const plant = await Plant.create({ nama, spesies, lokasi });
    res.status(201).json(plant);
  } catch (err) {
    console.error("Create Plant Error:", err);
    res.status(500).json({ message: "Server error" });
  }
};

export const getAllPlants = async (req, res) => {
  try {
    const plants = await Plant.findAll({ include: { model: User, as: "farmer" } });
    res.json(plants);
  } catch (err) {
    console.error("Get Plants Error:", err);
    res.status(500).json({ message: "Server error" });
  }
};

//edit
export const updatePlant = async (req, res) => {
  try {
    const { id } = req.params;
    const { nama, spesies, lokasi } = req.body;
    const plant = await Plant.findByPk(id);
    if (!plant) return res.status(404).json({ message: "Plant not found" });

    await plant.update({ nama, spesies, lokasi });
    res.json(plant);
  } catch (err) {
    console.error("Update Plant Error:", err);
    res.status(500).json({ message: "Server error" });
  }
};

//delete
export const deletePlant = async (req, res) => {
  try {
    const { id } = req.params;
    const plant = await Plant.findByPk(id);
    if (!plant) return res.status(404).json({ message: "Plant not found" });

    await plant.destroy();
    res.json({ message: "Plant deleted" });
  } catch (err) {
    console.error("Delete Plant Error:", err);
    res.status(500).json({ message: "Server error" });
  }
};

export const getPlantById = async (req, res) => {
  try {
    const { id } = req.params;
    const plant = await Plant.findByPk(id);

    if (!plant) {
      return res.status(404).json({ message: "Plant not found" });
    }

    res.json(plant);
  } catch (err) {
    console.error("Get Plant By Id Error:", err);
    res.status(500).json({ message: "Server error" });
  }
};


