gulp  = require 'gulp'
seq   = require 'run-sequence'

# Gulp tasks
require './gulp_tasks/pages'
require './gulp_tasks/styles'
require './gulp_tasks/watch'
require './gulp_tasks/clean'

# Gulp main task (production build)
gulp.task 'default', ['clean'], -> seq 'pages'