// Tip: assign your external references to variables instead of chaining off the curly brackets. 
function getAllDimensions(dataOverrides) {
    var dimensions = []
    for (let i = 0; i < dataOverrides.length; i++) {
    var dimension = dataOverrides[i]["dimension"];
    if (dimensions.findIndex(x=>x == dimension) == -1) {
        dimensions.push(dimension);
    }
    }

    return dimensions;
}

function initializeObject(objectId, comment, createdAt, updatedAt, lastModifiedBy, dimensions) {
    let obj = {"object_id": objectId, 
               "comment": comment, 
               "created_at": createdAt,
               "updated_at": updatedAt,
               "last_modified_by": lastModifiedBy};

    for (let i = 0; i < dimensions.length; i++) {
        const dimension = dimensions[i];
        Object.defineProperty(obj, dimension, {value: "", 
                                               writable: true, 
                                               enumerable: true, 
                                               configurable: true});
    }

    return obj;
}

function findObject(objects, objectId) {
    return objects.map(x=>x["object_id"]).findIndex(x=>x == objectId);
}

var dataOverrides = {{GetAllDataOverrides?.data?.data_overrides}};
dataOverrides = (dataOverrides == null || dataOverrides.length == 0) ? [] : dataOverrides;

var fixedColumns = ["object_id", "comment", "created_at", "updated_at", "last_modified_by"];
var dimensions = getAllDimensions(dataOverrides);

var objects = [];
for (const dataOverride of Object.values(dataOverrides)) {
    var objectIndex = findObject(objects, dataOverride["object_id"]);
    if (objectIndex == -1) {
        objects.push(initializeObject(dataOverride["object_id"], 
                                      dataOverride["comment"], 
                                      dataOverride["created_at"], 
                                      dataOverride["updated_at"], 
                                      dataOverride["last_modified_by"], 
                                      dimensions));
        objectIndex = objects.length - 1;
    }

    Object.defineProperty(objects[objectIndex], 
                          dataOverride["dimension"], {value: dataOverride["value"]?.toString(), 
                                                      writable: true, 
                                                      enumerable: true, 
                                                      configurable: true});
}

objects = objects.length == 0 ? [{"object_id": "", 
                                 "comment": "", 
                                 "created_at": "", 
                                 "updated_at": "", 
                                 "last_modified_by": ""}] : objects;

return objects;