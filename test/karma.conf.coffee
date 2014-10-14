# Karma configuration
# Generated on Tue Jul 01 2014 16:57:14 GMT+0800 (SGT)
#

browser = if process.env.CI then 'PhantomJS' else 'Chrome'

module.exports = (config) ->
  config.set

    # base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '..'


    # frameworks to use
    # available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['mocha', 'sinon-chai']


    # list of files / patterns to load in the browser
    files: [
      'bower_components/angular/angular.js'
      'bower_components/angular-animate/angular-animate.js'
      'bower_components/angular-sanitize/angular-sanitize.js'
      'bower_components/angular-ui-router/release/angular-ui-router.js'
      'bower_components/ionic/js/ionic.js'
      'bower_components/ionic/js/ionic-angular.js'

      # tests specific code
      'bower_components/angular-mocks/angular-mocks.js'

      # app specific code
      'src/scripts/**/*.coffee'

      # tests
      'test/**/*-test.coffee'
    ]


    # list of files to exclude
    exclude: [

    ]


    # preprocess matching files before serving them to the browser
    # available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors: {
      '**/*.coffee': ['coffee']
    }

    coffeePreprocessor:
      options:
        bare: false


    # test results reporter to use
    # possible values: 'dots', 'progress'
    # available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['progress']


    # web server port
    port: 9876


    # enable / disable colors in the output (reporters and logs)
    colors: true


    # level of logging
    # possible values:
    # - config.LOG_DISABLE
    # - config.LOG_ERROR
    # - config.LOG_WARN
    # - config.LOG_INFO
    # - config.LOG_DEBUG
    logLevel: config.LOG_INFO


    # enable / disable watching file and executing tests whenever any file changes
    autoWatch: true


    # start these browsers
    # available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: [
      browser
    ]


    # Continuous Integration mode
    # if true, Karma captures browsers, runs the tests and exits
    singleRun: false
