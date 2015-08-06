gulp      = require 'gulp'
gutil     = require 'gulp-util'
cached    = require 'gulp-cached'
remember  = require 'gulp-remember'
jade      = require 'gulp-jade'

src = 'src/pages/*.jade'

gulp.task 'pages', ->
  gulp.src src

    # ----- changed only ----- #
    .pipe cached 'pages'
    .pipe jade pretty: true
    .on 'error',  ->
      gutil.log 'Failed to compile pages..'
      gutil.beep()
      @emit 'end'

    # ---- entire fileset ---- #
    .pipe gulp.dest 'build/'

module.exports = src: src