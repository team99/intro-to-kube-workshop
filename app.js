'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
    var datetime = new Date();
    console.log(datetime + ' ' + req.originalUrl)
    res.send('Hello World ' + datetime);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
