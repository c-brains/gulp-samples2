gulp = require 'gulp'
config = prop.config
plugins = prop.plugins

# jade
module.exports = do ->
	gulp.task 'jade', ->
		console.log 'start COMPILE-JADE!!!'
		gulp
		.src config.paths.src+'/jade/pages/**/*.jade'
		.pipe plugins.plumber
			errorHandler: plugins.notify.onError 'Error: <%= error.message %>'
		.pipe plugins.data (file) ->
			return require '../'+config.paths.src+'data/sample.json'
		.pipe plugins.jade
			basedir: config.paths.src+'/jade'
		.pipe gulp.dest config.paths.pub
