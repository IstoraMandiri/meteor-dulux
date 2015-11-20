# Meteor Dulux

### An Umbrella Package for Opinionated Styling of Meteor Apps

This package combines a collection of other styling packages to handle all your design needs within meteor.

* Meteorstrap (Bootstrap 3 + GUI Editor)
* Orbit Media (Image / Font Uploads)
* EZWebApp (For web app icon creation)

In turn, it uses collectionfs and gridfs for file storage; all data is stored in mongo.

## Usage

```
meteor add hitchcott:dulux
```

Then, in your admin template

```
{{> Dulux}}
```

And if you've removed `insecure`

```coffeescript
Dulux.allow
  write: -> true # insert, update, delete
  read: -> true # download
```

(or you can set more granular permissions by referring to the individual packages)

For Meteorstrap Admin UI i18n you must add `tap:bootstrap-magic` to your project's `packages` file.

## License

MIT, 2015s