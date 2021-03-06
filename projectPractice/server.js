// Dependencies
// =============================================================
const express = require("express");
const bodyParser = require("body-parser");


// Models
//==============================================================
const db = require("./models");

// Sets up the Express App to handle data parsing
// =============================================================
const app = express();
var PORT = process.env.PORT || 3306;


//parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));
//parse application/json
app.use(bodyParser.json());

//Static directory
app.use(express.static("public"));

//Routes
//=============================================================
require("./routes/api-routes.js")(app);

// Starts the server to begin listening
// =============================================================

db.sequelize.sync().then(function() {
  app.listen(PORT, function() {
    console.log("App listening on PORT " + PORT);
  });
});