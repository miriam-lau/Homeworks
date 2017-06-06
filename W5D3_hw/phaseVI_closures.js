function dinerBreakfast() {
  let order = "I'd like scrambled eggs and bacon";
  console.log(order);

  return function bfastOrder(food) {
    console.log(order + " and " + food + " please.");
  };
}
