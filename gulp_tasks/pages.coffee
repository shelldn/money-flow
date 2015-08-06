gulp      = require 'gulp'
gutil     = require 'gulp-util'
cached    = require 'gulp-cached'
remember  = require 'gulp-remember'
jade      = require 'gulp-jade'
inject    = require 'gulp-inject'

src     = 'src/pages/*.jade'
assets  = gulp.src 'build/*.{js,css}', read: false

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
    .pipe remember 'pages'
    .pipe inject assets
    .pipe gulp.dest 'build/'

module.exports = src: src