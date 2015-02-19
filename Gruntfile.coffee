module.exports = (grunt) ->

  grunt.initConfig

    files:
      html: ['**/*.html']

    watch:
      options:
        livereload: true
      html:
        files: ["<%= files.html %>"]
    server:
      web:
        port: 8000

    open:
      dev:
        path: "http://localhost:<%= server.web.port %>"


  grunt.loadTasks 'tasks'
  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-open"

  # creating workflows
  grunt.registerTask "default", ["server", "open", "watch" ]