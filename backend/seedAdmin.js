import bcrypt from "bcryptjs";
import { Op } from "sequelize"; 
import { Role, User } from "./src/models/index.js";

async function seed() {
  try {
    const username = "superadmin";
    const email = "admin@example.com";
    const password = "Admin123!";
    const hashed = await bcrypt.hash(password, 10);

    const role = await Role.findOne({ where: { name: "admin" } });
    if (!role) {
      console.log("Role admin not found, insert it first.");
      process.exit(1);
    }
  
    const exists = await User.findOne({
      where: {
        [Op.or]: [{ username }, { email }]
      }
    });

    if (exists) {
      console.log("Admin already exists");
      process.exit(0);
    }

    await User.create({
      username,
      email,
      password: hashed,
      role_id: role.id
    });

    console.log("Admin seeded. username:", username, "password:", password);
    process.exit(0);
  } catch (err) {
    console.error(err);
    process.exit(1);
  }
}

seed();
