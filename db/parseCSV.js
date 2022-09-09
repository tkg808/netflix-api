const csvtojson = require("csvtojson");
process.env.NODE_ENV !== "production" && require("dotenv").config();
const filePath = process.env.CSV_PATH;
const file = "show"

/* === Parsing for unique values === */
csvtojson()
  .fromFile(filePath + file)
  .then((data) =>
  {
    let seen = {};

    for (let row of data)
    {
      let items = row[header].split(",");
      for (let item of items)
      {
        item = item.trim();
        if (!seen.hasOwnProperty(item))
        {
          seen[item] = true;
          console.log(item);
        }
      }
    }
  })