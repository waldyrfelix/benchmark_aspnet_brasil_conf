var fs = require('fs');
var http = require('http');
var express = require('express');
var bodyParser = require('body-parser');
var benchmark = require('./api/controllers/benchmarkController.js');
var app = express();

app.use(bodyParser.json());
app.use(function(err, req, res, next) {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});
app.use('/api', benchmark);

http.createServer(app).listen(5000, function() {
  console.log('HTTP Server http://localhost:5000');
});

exports = module.exports = app;
