gulp = require 'gulp'
config = prop.config
plugins = prop.plugins

# jade
module.exports = do ->
	gulp.task 'jade', ->
		console.log 'start COMPILE-JADE!!!'
		dataInfo = JSON.parse plugins.fs.readFileSync(config.paths.src+'data/sample.json', 'utf8')
		gulp
		.src config.paths.src+'/jade/pages/**/*.jade'
		.pipe plugins.plumber
			errorHandler: plugins.notify.onError 'Error: <%= error.message %>'
		.pipe plugins.jade
			basedir: config.paths.src+'/jade'
			data: dataInfo
		.pipe gulp.dest config.paths.pub
