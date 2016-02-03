gulp = require 'gulp'
plugins = prop.plugins
config = prop.config

# Watch : ファイル監視
module.exports = do ->
	gulp.task 'watch', ->

		gulp.watch [
			config.paths.pub+'**/*.js'
			config.paths.pub+'**/*.html'
			config.paths.pub+'**/*.css'
			config.paths.pub+'**/*.jpg'
			config.paths.pub+'**/*.png'
			config.paths.pub+'**/*.gif'
		], ['reload']

		gulp.watch [
			config.paths.pub+'**/*.html'
		], ['htmlhint']

		gulp.watch [
			config.paths.src+'jade/**/*.jade'
		], ['compile-html']
