gulp      = require 'gulp'
gutil     = require 'gulp-util'
cached    = require 'gulp-cached'
remember  = require 'gulp-remember'
jade      = require 'gulp-jade'
inject    = require 'gulp-inject'
connect   = require 'gulp-connect'

src = 'src/pages/*.jade'

injectOptions =
  read: false
  cwd : 'build/'


gulp.task 'pages:debug', ->
  assets = gulp.src 'application.{js,css}', injectOptions
  vendor = gulp.src 'vendor.{js,css}'     , injectOptions

  gulp.src src

    # ----- changed only ----- #
    .pipe cached 'pages'
    .pipe jade pretty: true
    .on 'error', ->
      gutil.log 'Failed to compile pages..'
      gutil.beep()
      @emit 'end'

    # ---- entire fileset ---- #
    .pipe remember 'pages'
    .pipe inject assets
    .pipe inject vendor, name: 'vendor'
    .pipe gulp.dest 'build/'
    .pipe connect.reload()

module.exports = src: src
