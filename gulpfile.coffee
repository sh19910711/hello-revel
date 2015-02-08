gulp = require("gulp")

gulp.task "bower", (done)->
  bower = require("bower")
  bower.commands.install().on "end", ->
    done()
  undefined

sourceFiles = [
  "src/app/**/*.coffee"
  "src/app/**/*.cjsx"
]

gulp.task "build", ["bower"], ->
  webpack = require("gulp-webpack")
  gulp.src sourceFiles
    .pipe webpack(require "./conf/webpack.coffee")
    .pipe gulp.dest("public/js/")

gulp.task "watch", ->
  gulp.watch sourceFiles, ["build"]

