import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import { User, Role } from "../models/index.js";

export const register = async (req, res) => {
  const { username, email, password, role_id } = req.body;

  if (!username || !email || !password || !role_id) {
    return res.status(400).json({ message: "All fields are required" });
  }

  try {
    const existEmail = await User.findOne({ where: { email } });
    if (existEmail) {
      return res.status(400).json({ message: "Email already registered" });
    }

    const existUsername = await User.findOne({ where: { username } });
    if (existUsername) {
      return res.status(400).json({ message: "Username already taken" });
    }

    const hashedPassword = await bcrypt.hash(password, 10);
    await User.create({ username, email, password: hashedPassword, role_id });

    res.status(201).json({ message: "User registered successfully" });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Server error" });
  }
};

export const login = async (req, res) => {
  const { email, password } = req.body;

  try {
    const user = await User.findOne({
      where: { email },
      include: [{ model: Role, attributes: ["name"] }],
    });

    if (!user) return res.status(400).json({ message: "Invalid credentials" });

    const validPass = await bcrypt.compare(password, user.password);
    if (!validPass)
      return res.status(400).json({ message: "Invalid credentials" });

    const token = jwt.sign(
      { id: user.id, role: user.Role.name },
      process.env.JWT_SECRET,
      { expiresIn: "1d" }
    );

    res.json({
      message: "Login success",
      token,
      user: {
        id: user.id,
        username: user.username,
        email: user.email,
        role: user.Role.name,
      },
    });
  } catch (err) {
    console.error(err);
    res.status(500).json({ message: "Server error" });
  }
};
