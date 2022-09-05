const mongoose = require("../connection");

const TagSchema = new mongoose.Schema(
  {
    tag_name:
    {
      type: String,
      required: true,
      unique: true,
    },
  }
);

module.exports = mongoose.model("Tag", TagSchema);