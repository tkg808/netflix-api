const mongoose = require("../connection");

const GenreSchema = new mongoose.Schema(
  {
    genre_name:
    {
      type: String,
      required: true,
      unique: true,
    }
  }
);

module.exports = mongoose.model("Genre", GenreSchema);