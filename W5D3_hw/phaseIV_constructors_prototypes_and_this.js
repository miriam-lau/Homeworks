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
