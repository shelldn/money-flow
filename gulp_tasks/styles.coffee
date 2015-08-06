gulp  = require 'gulp'
gutil = require 'gulp-util'
sass  = require 'gulp-sass'

root = 'src/styles'

gulp.task 'styles', ->
  gulp.src "#{root}/application.scss"
    .pipe sass()
    .on 'error', ->
      gutil.log 'Failed to compile styles..'
      gutil.beep()
      @emit 'end'
    .pipe gulp.dest 'build/'

module.exports = src: "#{root}/**/*.{scss,sass}"
