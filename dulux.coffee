@Dulux = @Dulux || {}

Dulux.allow = (options={}) ->
  options.write?= -> true
  options.read?= -> true

  if Meteor.isClient and Router?
    Router.plugin 'Meteorstrap'

  if Meteor.isServer
    Meteorstrap.Themes.allow
      'remove': options.write
      'insert': options.write
      'update': options.write

    Meteorstrap.publishEditorTo = options.write

    Orbit.Media.allow
      'remove': options.write
      'insert': options.write
      'update': options.write
      'download' : options.read

    EZWebApp.collection.allow
      'remove': options.write
      'insert': options.write
      'update': options.write
      'download' : options.read