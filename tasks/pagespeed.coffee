#
# grunt-pagespeed
# http://www.jamescryer.com/grunt-pagespeed
#
# Copyright (c) 2013 James Cryer
# http://www.jamescryer.com
# Licensed under the MIT license.
#
'use strict'

module.exports = (grunt) ->

  config    = require('./lib/config').init grunt
  pagespeed = require('./lib/pagespeed').init grunt
  output    = require('./lib/output').init grunt

  grunt.registerMultiTask 'pagespeed', 'Run Pagespeed Insights', ->

    grunt.verbose.writeln 'Running Pagespeed Insights'
    this.async()

    params = config.params this.options(this.data)
    pagespeed.run(params, output.process)
