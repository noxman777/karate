var fs = require('fs');
var readMe = fs.readFileSync('C:/Users/CY0016/IdeaProjects/karateNewdemo/src/test/java/utils/test.txt','utf8');
console.log(readMe);
fs.writeFileSync('C:/Users/CY0016/IdeaProjects/karateNewdemo/src/test/java/utils/write.txt','readMe');

fs.readFile('C:/Users/CY0016/IdeaProjects/karateNewdemo/src/test/java/utils/test.txt','utf8',function (err,data) {
    console.log(data)
    
})


