const mongoose = require("../connection");

const PersonSchema = new mongoose.Schema(
  {
    name:
    {
      type: String,
      required: true,
      unique: true
    },
  }
);

module.exports = mongoose.model("Person", PersonSchema);