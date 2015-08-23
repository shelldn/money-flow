gulp        = require 'gulp'
gulpif      = require 'gulp-if'
tsc         = require 'gulp-typescript'
coffee      = require 'gulp-coffee'
concat      = require 'gulp-concat'

gulp.task 'scripts:debug', ->
  gulp.src 'src/scripts/**/*.{js,ts,coffee}'
    .pipe gulpif /[.]ts$/, tsc()
    .pipe gulpif /[.]coffee$/, coffee bare: true
    .pipe concat 'application.js'
    .pipe gulp.dest 'build/'