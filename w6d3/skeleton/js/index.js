console.log("Hello from the JavaScript console!");

// Your AJAX request here
$.ajax({
  type: 'GET',
  url: 'http://api.openweathermap.org/data/2.5/weather?q=NY,NY&appid=bcb83c4b54aee8418983c2aff3073b3b',
  success(data){
    console.log('weather');
    console.log(data);
  },
  error(err){
    console.log(err);
  }
});
// Add another console log here, outside your AJAX request
