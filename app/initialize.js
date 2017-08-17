document.addEventListener('DOMContentLoaded', function() {
  // do your setup here
  console.log('Initialized app');
  //require('./coffee/assets/rsvp');
  require('rsvp');
  require('./coffee/MainApp');
  require('./coffee/IndexController');
  require('./coffee/HandelBarsController');
});
