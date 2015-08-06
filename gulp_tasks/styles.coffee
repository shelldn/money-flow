gulp = require 'gulp'
sass = require 'gulp-sass'

gulp.task 'styles', ->
  gulp.src 'src/styles/application.scss'
    .pipe sass()
    .pipe gulp.dest 'build/'
