gulp = require 'gulp'
jade = require 'gulp-jade'

gulp.task 'templates', ->
  gulp.src 'src/templates/*.jade', base: 'src/'
    .pipe jade pretty: true
    .pipe gulp.dest 'build/'