
function fs(config) {

    var fs = require('fs');
     config['readFile']=function(filePath){
        return fs.readFileSync(filePath,'utf8');
    };
     config['writeFile']=function(FilePath,Data){
        return fs.writeFileSync(FilePath,Data);
    };
    return config
}
var config1={};
var con=fs(config1);
console.log(con.readFile('C:/Users/CY0016/IdeaProjects/karateNewdemo/src/test/java/utils/test.txt'));
con.writeFile('C:/Users/CY0016/IdeaProjects/karateNewdemo/src/test/java/utils/write.txt','readMeNOt')