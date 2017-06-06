console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax ({
  method: "GET",
  url: "http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b",
  dataType: 'json',
  data: 'data',
  success: function(data) {
    console.log("data");
  },
  error() {
    console.log("Sorry, an error occurred");
  }
});
// Add another console log here, outside your AJAX request
console.log("outside AJAX request");
