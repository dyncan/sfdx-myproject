const gulp = require('gulp')
const zip = require('gulp-zip')
const shell = require('gulp-shell')

gulp.task('deploy', ['build'], shell.task('sfdx force:source:push'))
gulp.task('build', () =>{
    //console.log('build called');
    return '';
})
gulp.task('watch', () => {
    gulp.watch([`force-app/main/default/pages/**/*.*`,`force-app/main/default/aura/**/*`,`force-app/main/default/classes/**/*.*`], [''])
})