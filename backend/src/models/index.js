import { DataTypes } from "sequelize";
import sequelize from "../config/database.js";
import UserModel from "./user.js";
import RoleModel from "./role.js";
import PlantModel from "./plant.js";

const User = UserModel(sequelize, DataTypes);
const Role = RoleModel(sequelize, DataTypes);

const Plant = PlantModel(sequelize, DataTypes);

// Relations
Role.hasMany(User, { foreignKey: "role_id" });
User.belongsTo(Role, { foreignKey: "role_id" });

User.hasMany(Plant, { foreignKey: "farmer_id" });
Plant.belongsTo(User, { foreignKey: "farmer_id", as: "farmer" });

export { sequelize, User, Role, Plant };