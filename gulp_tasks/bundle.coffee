gulp        = require 'gulp'
bowerFiles  = require 'main-bower-files'
concat      = require 'gulp-concat'

gulp.task 'bundle', ->

  gulp.src bowerFiles '**/*.css'
    .pipe concat 'vendor.css'
    .pipe gulp.dest 'build/'

  gulp.src bowerFiles '**/*.js'
    .pipe concat 'vendor.js'
    .pipe gulp.dest 'build/'