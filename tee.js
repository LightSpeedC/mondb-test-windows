'use strict';

var fileName = process.argv[2];
if (!fileName) return console.log('tee error! file name needed!!!');

var fs = require('fs');

var w = fs.createWriteStream(fileName);
var r = process.stdin;
// r.pipe(w);
r.on('end', function () { w.end(); });
r.on('readable', function () {
  var buf = r.read();
  if (!buf) return;
  w.write(buf);
  process.stdout.write(buf);
});
