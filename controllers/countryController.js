/* === Config === */
const express = require("express");
const pool = require("../db/connection");
const router = express.Router();

router.post("/countries", async (req, res) =>
{
  try
  {
    const { country_name } = req.body;
    const newCountry = await pool.query(`INSERT INTO country (country_name) VALUES(${country_name})`);
    res.json(newCountry.rows[0]);
  }
  catch (error)
  {
    console.log(error);
  }
})

module.exports = router;