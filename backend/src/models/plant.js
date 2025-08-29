export default (sequelize, DataTypes) => {
  const Tanaman = sequelize.define("Tanaman", {
    nama: { type: DataTypes.STRING, allowNull: false },
    spesies: { type: DataTypes.STRING },
    lokasi: { type: DataTypes.STRING },
  }, {
    tableName: "tanaman",
    timestamps: true,
    createdAt: "created_at",
    updatedAt: "updated_at"
  });

  return Tanaman;
};