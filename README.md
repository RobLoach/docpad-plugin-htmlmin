# [HTML-Minifier](http://github.com/kangax/html-minifier) Plugin for [DocPad](http://docpad.org)

[![Build Status](https://secure.travis-ci.org/RobLoach/docpad-plugin-htmlmin.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-htmlmin "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-htmlmin.png)](http://badge.fury.io/js/docpad-plugin-htmlmin "View this project on NPM")

Allows minifying HTML, using the [HTML-Minifier](http://github.com/kangax/html-minifier),
from within [DocPad](https://docpad.org).

Convention:  `.html.htmlmin.anything`


## Install

```bash
$ docpad install htmlmin
```


## Configure

### Defaults

The default configuration for this plugin is the equivalant of adding the
following [html-minifier options](http://perfectionkills.com/experimenting-with-html-minifier/#options)
to your [DocPad configuration file](http://docpad.org/docs/config):

``` coffee
  plugins:
    htmlmin:
      htmlminOptions:
        removeComments: true
        removeCommentsFromCDATA: false
        removeCDATASectionsFromCDATA: false
        collapseWhitespace: true
        collapseBooleanAttributes: false
        removeAttributeQuotes: false
        removeRedundantAttributes: false
        useShortDoctype: false
        removeEmptyAttributes: false
        removeOptionalTags: false
        removeEmptyElements: false
```

### Template Configuration

It is possible to override the default configuration on a per-template basis:

``` html
---
title: 'HTML-Minifier Demo'
htmlmin:
  removeComments: false
---
<html>
  <head>
    <title>HTML Minifier for DocPad</title>
  </head>
  <body>
    <!-- This HTML comment will not be removed. -->
  </body>
</html>
```


## History
[You can discover the history inside the `History.md` file](https://github.com/robloach/docpad-plugin-htmlmin/blob/master/History.md#files)


## Contributing
[You can discover the contributing instructions inside the `Contributing.md` file](https://github.com/robloach/docpad-plugin-htmlmin/blob/master/Contributing.md#files)


## License
Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT License](http://creativecommons.org/licenses/MIT/)
<br/>Copyright &copy; 2013 [Rob Loach](http://robloach.net)
