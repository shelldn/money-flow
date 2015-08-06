gulp  = require 'gulp'
seq   = require 'run-sequence'

# Gulp tasks
require './gulp_tasks/pages'
require './gulp_tasks/watch'

# Gulp main task (production build)
gulp.task 'default', -> seq 'pages'