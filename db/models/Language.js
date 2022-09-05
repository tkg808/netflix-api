const mongoose = require("../connection");

const LanguageSchema = new mongoose.Schema(
  {
    language_name:
    {
      type: String,
      required: true,
      unique: true,
    }
  }
);

module.exports = mongoose.model("Language", LanguageSchema);