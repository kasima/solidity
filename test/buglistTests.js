#!/usr/bin/env node

var fs = require('fs')
var bugs = JSON.parse(fs.readFileSync(__dirname + '/../docs/bugs.json', 'utf8'))
var tests = fs.readFileSync(__dirname + '/buglist_test_vectors.md', 'utf8')

var reg = /\s*#\s+(\S+)\s+## buggy\n([^#]*)## fine\n([^#]*)/g

while ((result = reg.exec(tests)) !== null)
{
    var name = result[1]
    var buggy = result[2].split('\n--\n')
    var fine = result[3].split('\n--\n')
    console.log("Testing " + name + " with " + buggy.length + " buggy and " + fine.length + " fine instances")

    // TODO: Extract the bug list entry "name", find the regex and run it against the source
}
