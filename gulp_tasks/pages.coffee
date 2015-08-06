gulp  = require 'gulp'
jade  = require 'gulp-jade'

root = 'src/pages'

gulp.task 'pages', ->
  gulp.src "#{root}/*.jade"
    .pipe jade pretty: true
    .pipe gulp.dest 'build/'