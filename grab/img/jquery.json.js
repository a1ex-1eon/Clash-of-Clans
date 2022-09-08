String.prototype.replaceAll = function(what, toWhat){
    return this.split(what).join(toWhat);
};

window.toJSON = function(arr){
    var str = "{";
    
    for(var k in arr){
        str += "\"" + k + "\":";

        switch(typeof arr[k]){
            case "string":
                str += "\"" + arr[k].replaceAll("\"", "\\\"").replaceAll("\\", "\\\\") + "\",";
            break;

            case "number":
                str += arr[k] + ",";
            break;

            case "boolean":
                str += arr[k] ? "true," : "false,";
            break;

            default:
                str = str.substr(0, str.length - k.length - 2);
            break;
        }
    }

    return str.substr(0, str.length - 1) + "}";
};