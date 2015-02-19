module.exports = function(grunt) {
  var express = require("express");
  grunt.registerTask("server", "static file development server", function() {
    var app, webPort;
    webPort = grunt.config.get("server.web.port") || 8000;

    app = express();
    app.use(express.static(process.cwd()));
    app.listen(webPort);

    grunt.log.writeln("Starting express web server on port " + webPort);

    return app;
  });
};
