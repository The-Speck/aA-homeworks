console.log("Hello from the JavaScript console!");

const time = Date.now();
// Your AJAX request here
$.ajax({
  type: 'GET',
  url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
  success(data) {
    console.log("We have your weather!");
    console.log(data);
    console.log(Date.now() - time + "ms");
  },
  error() {
    console.error("An error occurred.");
  },
});

// Add another console log here, outside your AJAX request
console.log("Bottom of the file");
console.log(Date.now() - time + "ms");

// When does the request get sent?
// The request gets sent when this file gets loaded and hits $.ajax.

// When does the response come back?
// The response comes back when the server response and we (the client) recieve it.

// What's the current weather in New York?
// 294 Kelvin or ~70 fahrenheit or 21 celsius

// Did the page refresh?
// It didn't

// How could we use different HTTP methods in our request?
// By setting different types.
