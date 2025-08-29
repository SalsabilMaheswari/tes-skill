export default (sequelize, DataTypes) => {
  const Role = sequelize.define("Role", {
    name: { type: DataTypes.STRING, allowNull: false, unique: true }
  }, {
    tableName: "roles",
    timestamps: false
  });
  return Role;
};