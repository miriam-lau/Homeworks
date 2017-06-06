function Elephant(name, height, tricks_arr) {
  this.name = name;
  this.height = height;
  this.tricks = tricks_arr;
}

Elephant.prototype.trumpet = function() {
  console.log(this.name + " goes 'phrRRRRRRRR!!!!!!!'");
}

Elephant.prototype.grow = function() {
  this.height += 12;
};

Elephant.prototype.addTrick = function(trick) {
  this.tricks.push(trick);
};

Elephant.prototype.play = function() {
  trickIdx = Math.floor(Math.random() * this.tricks.length);
  console.log(this.name + " is " + this.tricks[trickIdx] + "!");
};

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);

let herd = [ellie, charlie, kate, micah];

Elephant.paradeHelper = function(Elephant) {
  console.log(Elephant.name + " is trotting by!");
};

//Call forEach on the her and pass paradeHelper in as the callback
