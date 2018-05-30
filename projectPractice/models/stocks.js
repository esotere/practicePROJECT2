module.exports = function(sequelize, DataTypes) {
  var Stock = sequelize.define("Stock", {
    colunm: DataTypes.STRING,
    complete: DataTypes.BOOLEAN,
    primaryKey: true
  });
  return Stock;
};