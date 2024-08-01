let path = require('path')

let fileName = path.basename('E:\\codes\\College codes\\Sem 3\\CollegeCodes-DS-WT\\Web Tech\\Node')
console.log("filename : ",fileName)

let DirName = path.dirname('E:\\codes\\College codes\\Sem 3\\CollegeCodes-DS-WT\\Web Tech\\Node')
console.log("Dirname : ",DirName)

let abspath = path.isAbsolute('E:\\codes\\College codes\\Sem 3\\CollegeCodes-DS-WT\\Web Tech\\Node')
console.log("abspath : ",abspath)

let normaize = path.normalize('E:\\codes\\College codes\\Sem 3\\CollegeCodes-DS-WT\\..\\CollegeCodes-DS-WT\\Web Tech\\Node')
console.log("normalize : ",normaize)

let relative = path.relative('/','../../React')
console.log("relative : ",relative)
 

var fs = require('fs');
fs.readFile('demofile1.txt', 'utf8', function(err, data){
    console.log("not sync : " ,data);
});


const data = fs.readFileSync('demofile1.txt', 'utf-8')
console.log(data)

fs.exists('demofile1.txt', (exists) => {
    console.log(exists ? 'Found' : 'Not Found!');
  });