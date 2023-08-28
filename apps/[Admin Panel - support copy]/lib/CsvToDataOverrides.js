// Tip: assign your external references to variables instead of chaining off the curly brackets. 
let raw = {{ atob(OverridesCsvDropZone.value) }};
if (!raw.startsWith("object_id")) {
  raw = raw.slice(3);
}

let lines = raw.split(/(?:\r\n|\n)+/).filter(function(el) {return el.length != 0});
let headers = lines.splice(0, 1)[0].split(",");
let valuesRegExp = /(?:,|\n|^)("(?:(?:"")*[^"]*)*"|[^",\n]*|(?:\n|$))/g;

var table = [];
for (const line of Object.values(lines)) {
    var matches = valuesRegExp.exec(line);
    
    var row = [];
    while (matches != null) {
        var value = matches[1];
        value = value.replace(/"/g, "");
        row.push(value);
        matches = valuesRegExp.exec(line);
    }
    table.push(row);
}

var fixedIndexes = [headers.findIndex(x=>x=="object_id"), headers.findIndex(x=>x=="comment")];
var ignoredIndexes = [headers.findIndex(x=>x=="created_at"), headers.findIndex(x=>x=="updated_at"), headers.findIndex(x=>x=="last_modified_by")];
var dimensionsIndexes = headers.map(x=>headers.findIndex(y=>x==y)).filter(x=>(x != -1 && fixedIndexes.findIndex(y=>x == y) == -1 && ignoredIndexes.findIndex(y=>x == y) == -1));

var data_overrides = [];
for (let i = 0; i < table.length; i++) {
  var object_id = table[i][fixedIndexes[0]];
  var comment = table[i][fixedIndexes[1]];
  for (let j = 0; j < dimensionsIndexes.length; j++) {
    var dimensionIndex = dimensionsIndexes[j];
    var dimension = headers[dimensionIndex];
    var value = table[i][dimensionIndex];
    if (value == "") {
      continue;
    }
    if (!isNaN(Number(value))) {
      value = Number(value);
    }
    data_overrides.push({"object_id": object_id, "dimension": dimension, "value": value, "comment": comment})
  }
}

return data_overrides;