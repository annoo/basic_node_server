'use strict';
const config = require("./config.json");

const express = require('express');

const PORT = config.serverPort;
const HOST = config.serverHost;

const app = express();

app.get('/', (req, res) => {
    res.send('Hello WOrld');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);