function titleize(names, callback) {
  let titleized = names.map(name => `Mx. ${name} Jingleheimer Schmidt`);
  callback(titleized);
};

// invoking the function
titleize(["Mary", "Brian", "Leo"], (names) => {
  names.forEach(name => console.log(name));
});


// function titleize(name_arr, callback) {
//   let title_arr = [];
//   name_arr.forEach(function(name) {
//     title_arr.push('Mx. ' + name + ' Jingleheimer Schmidt')
//   });
// }
//
// function callback(title_arr) {
//   title_arr.forEach(function(title) {
//     console.log(title);
//   });
// }
