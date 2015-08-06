gulp    = require 'gulp'
pages   = require './pages'
styles  = require './styles'

gulp.task 'watch', ->
  gulp.watch pages  .src, ['pages']
  gulp.watch styles .src, ['styles']