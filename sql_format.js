const fs = require("fs");
const path = require("path");

function walk(dir) {
  return new Promise((resolve, reject) => {
    fs.readdir(dir, (error, files) => {
      if (error) {
        return reject(error);
      }
      Promise.all(
        files.map(file => {
          return new Promise((resolve, reject) => {
            const filepath = path.join(dir, file);
            fs.stat(filepath, (error, stats) => {
              if (error) {
                return reject(error);
              }
              if (stats.isDirectory()) {
                walk(filepath).then(resolve);
              } else if (stats.isFile()) {
                resolve(filepath);
              }
            });
          });
        })
      ).then(foldersContents => {
        resolve(
          foldersContents.reduce(
            (all, folderContents) => all.concat(folderContents),
            []
          )
        );
      });
    });
  });
}
let replaceList = [
  "create",
  "or",
  "and",
  "select",
  "where",
  "insert into",
  "update",
  "delete",
  "in",
  "not",
  "from",
  "min(",
  "max(",
  "sum(",
  "avg(",
  "order by",
  "group by",
  "asc",
  "desc",
  "like",
  "ilike",
  "values",
  "int",
  "float",
  "text",
  "serial",
  "char",
  "varchar",
  "date",
  "time",
  "timestamp",
  "interval",
  "bool",
  "boolean",
  "smallint",
  "numeric"
];
walk(__dirname).then(list => {
  list
    .filter(path => {
      return path.endsWith(".sql");
    })
    .forEach(file => {
      fs.readFile(file, (err, data) => {
        if (err) {
          console.error(err);
        } else {
          fileStr = data.toLocaleString();
          replaceList.forEach(item => {
            let itemMatchSpace = ` ${item} `.replace("(", "\\(");
            let itemMatchCommaExp = ` ${item},\r?\n?`.replace("(", "\\(");
            let itemMatchComma = itemMatchCommaExp.replace(/\?/g, "");
            fileStr = fileStr.replace(
              new RegExp(itemMatchCommaExp, "ig"),
              itemMatchComma.toUpperCase()
            );
            fileStr = fileStr.replace(
              new RegExp(itemMatchSpace, "ig"),
              itemMatchSpace.toUpperCase()
            );
          });
          try {
            fs.writeFile(file, fileStr, () => {
              console.log("sucessfully formatted " + file);
            });
          } catch (writeError) {
            console.error(writeError);
          }
        }
      });
    });
});
