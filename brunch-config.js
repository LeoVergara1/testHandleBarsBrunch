// See http://brunch.io for documentation.
exports.files = {
  javascripts: {joinTo: 'app.js'},
  stylesheets: {joinTo: 'app.css'}
};
exports.npm = {
  enabled: true,
  styles: {
    bootstrap: ['dist/css/bootstrap.css']
  },
  globals: {
    jQuery: "jquery",
    $: "jquery"
  }
};
exports.plugins = {
  handlebars: {
    locals: {
      title: 'Brunch is awesome!'
    }
  }
};
exports.server = {
    command: "php -S 192.168.128.121:3333 -t public"
}
