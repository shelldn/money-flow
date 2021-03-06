gulp  = require 'gulp'
seq   = require 'run-sequence'

# Gulp tasks
require './gulp_tasks/images'
require './gulp_tasks/bundle'
require './gulp_tasks/pages'
require './gulp_tasks/templates'
require './gulp_tasks/scripts'
require './gulp_tasks/styles'
require './gulp_tasks/watch'
require './gulp_tasks/clean'

# Debug build task
gulp.task ':debug', ['clean'], -> seq ['images', 'bundle', 'styles:debug'], 'pages:debug'

# Gulp main task (production build)
gulp.task 'default', ['clean'], -> seq 'pages'
