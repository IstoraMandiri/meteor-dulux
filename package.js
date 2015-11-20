Package.describe({
  name: 'hitchcott:dulux',
  version: '0.0.1',
  summary: 'Umbrella Package for Opinionated Styling of Meteor Apps',
  git: 'http://github.com/hitchcott/meteor-dulux',
  documentation: 'README.md'
});

Package.onUse(function(api) {
  api.versionsFrom('1.2.1');
  api.use([
    'tap:meteorstrap',
    'orbit:media',
    'hitchcott:ez-web-app',
    'templating',
    'coffeescript'
  ]);
  api.addFiles([
    'dulux.html',
    'dulux.coffee'
  ])
});