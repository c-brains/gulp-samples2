gulp = require 'gulp'
config = prop.config
plugins = prop.plugins

# Beautify HTML
module.exports = do ->
	gulp.task 'beautify-html', ->
		console.log 'start BEAUTIFY-HTML!!!'
		gulp
		.src [
			config.paths.pub+'**/*.html'
		]
		.pipe plugins.prettify
			indent_with_tabs: true
#		.pipe plugins.htmlPrettify
#			indent_char: "\t"
#			indent_size: 1
#		.pipe plugins.htmlBeautify
#			indent_with_tabs: true
		.pipe gulp.dest config.paths.pub
