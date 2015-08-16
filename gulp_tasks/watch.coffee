gulp    = require 'gulp'
connect = require 'gulp-connect'
pages   = require './pages'
styles  = require './styles'

gulp.task 'connect', ->
  connect.server
    port        : 8080
    root        : 'build/'
    livereload  : true

gulp.task 'watch', ['connect'], ->
  gulp.watch pages  .src, ['pages:debug']
  gulp.watch styles .src, ['styles:debug']
