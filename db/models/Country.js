const mongoose = require("../connection");

const CountrySchema = new mongoose.Schema(
  {
    country_name:
    {
      type: String,
      required: true,
      unique: true
    }
  }
);

module.exports = mongoose.model("Country", CountrySchema);