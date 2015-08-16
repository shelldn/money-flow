gulp    = require 'gulp'
gutil   = require 'gulp-util'
sass    = require 'gulp-sass'
connect = require 'gulp-connect'

root = 'src/styles'

gulp.task 'styles:debug', ->
  gulp.src "#{root}/application.scss"
    .pipe sass()
    .on 'error', ->
      gutil.log 'Failed to compile styles..'
      gutil.beep()
      @emit 'end'
    .pipe gulp.dest 'build/'
    .pipe connect.reload()

module.exports = src: "#{root}/**/*.{scss,sass}"
