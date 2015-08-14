# Karma configuration

module.exports = (config) ->
  config.set

    files: [
      'build/application.js',
      'test/**/*Spec.{js,coffee}'
    ]

    frameworks: ['jasmine']
    browsers: ['PhantomJS']
