/* === Config === */
const Pool = require("pg").Pool;

const pool = new Pool(
  {
    user: "netflixuser",
    password: "netflix",
    host: "localhost",
    port: 5432,
    database: "netflix",
  }
)

module.exports = pool;