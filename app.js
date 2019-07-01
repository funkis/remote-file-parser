var express = require('express');
var app = express();

var ParserController = require('./ParserController');
app.use('/parse', ParserController);
app.use(express.static('public'));

module.exports = app;