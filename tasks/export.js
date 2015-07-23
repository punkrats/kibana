module.exports = function (grunt) {
  grunt.registerTask('export', [
    'get_build_props',
    'clean:target',
    'clean:build',
    'require_css_deps:copy',
    'less:build',
    'copy:kibana_src',
    'clean:dev_only_plugins',
    'touch_config',
    'replace:build_props',
    'requirejs',
    'clean:unneeded_source_in_build',
    'copy:server_src',
    'replace_package_json',
    'replace:dist',
    'copy:dist',
    'clean:unneeded_css_in_src'
  ]);
};
