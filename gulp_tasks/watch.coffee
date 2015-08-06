gulp  = require 'gulp'
pages = require './pages'

gulp.task 'watch', ->
  gulp.watch pages.src, ['pages']