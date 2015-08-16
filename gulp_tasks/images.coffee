gulp = require 'gulp'

gulp.task 'images', ->
  gulp.src 'src/images/*.png'
    .pipe gulp.dest 'build/'
