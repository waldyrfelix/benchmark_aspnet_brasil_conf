var express = require('express');
var fs = require('fs');
var readline = require('readline');
var router = express.Router();

router.route('/benchmark/list').get(function(request, response) {
    var list = [];

    for (var i = 0; i < 30; i++) {
        list.push({
            Line1: "texto " + i,
            Line2: i,
            Line3: 45.0 + i
        });
    }

    response.json(list);
});

router.route('/benchmark/file').get(function(request, response) {
    var list = [];

    var lineReader = readline.createInterface({
        input: fs.createReadStream('file.txt')
    });

    lineReader.on('line', function(line) {
        list.push({
            Line1: line,
            Line2: 100,
            Line3: 100.0
        });
    });

    lineReader.on('close', function() {
        response.json(list);
    });
});

module.exports = router;
