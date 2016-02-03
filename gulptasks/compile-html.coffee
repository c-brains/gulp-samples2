gulp = require 'gulp'
config = prop.config
plugins = prop.plugins

# Compile HTML
module.exports = do ->
	gulp.task 'compile-html', (cb) ->
		plugins.runSequence(
			'jade'
			cb
		)
