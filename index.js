const express = require("express");
const app = express();
app.set("port", process.env.PORT || 8000);

/* === Middleware ===  */
// Allow connections from all domains.
const cors = require("cors");
app.use(cors());

// Parses key value pairs in request.
app.use(express.urlencoded({ extended: true }));

// Converts json strings to an object for the request.
app.use(express.json());

// Log each request.
const requestLogger = require("./middleware/request_logger");
app.use(requestLogger);

// Log each response.
const responseLogger = require("./middleware/response_logger");
app.use(responseLogger);

/* === Connection === */
app.listen(app.get("port"), () => 
{
  console.log(`✅ Listening on port ${app.get('port')}`);
})