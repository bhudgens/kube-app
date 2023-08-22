/** Hookup Express */
const express = require("express");
const app = express();

/** Configure our body Parser */
const bodyParser = require("body-parser");
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

/********************************************************************
 * Route Handlers
 ********************************************************************/

["health", "healthz", "diagnostic"].forEach((endpoint) => {
  app.get(`/${endpoint}`, (_, res) => res.status(200).end("OK"));
});

const response = "OK";
app.get(`/`, (_, res) => res.status(200).json({ response }));

/********************************************************************
 * Start the Express Server
 ********************************************************************/
const { PORT } = process.env;
app.listen(PORT || 3000);
