# [HTML-Minifier](http://github.com/kangax/html-minifier) Plugin for [DocPad](http://docpad.org)

<!-- BADGES/ -->

[![Build Status](https://secure.travis-ci.org/RobLoach/docpad-plugin-htmlmin.png?branch=master)](http://travis-ci.org/RobLoach/docpad-plugin-htmlmin "Check this project's build status on TravisCI")
[![NPM version](https://badge.fury.io/js/docpad-plugin-htmlmin.png)](http://badge.fury.io/js/docpad-plugin-htmlmin "View this project on NPM")
[![Gittip button](http://img.shields.io/gittip/RobLoach.png)](https://www.gittip.com/RobLoach/ "Support this project using Gittip")
[![Flattr button](http://img.shields.io/flattr/donate.png?color=yellow)](http://flattr.com/thing/2257574/RobLoach "Support this project using Flattr")
[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/RobLoach/docpad-plugin-htmlmin/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

<!-- /BADGES -->


Allows minification of HTML in [DocPad](https://docpad.org), using
[HTML-Minifier](http://github.com/kangax/html-minifier).

Convention:  `.html.anything`


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

      # Disabled on development environments.
      environments:
        development:
          enabled: false
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


<!-- HISTORY/ -->

## History
[Discover the change history by heading on over to the `HISTORY.md` file.](https://github.com/RobLoach/docpad-plugin-htmlmin/blob/master/HISTORY.md#files)

<!-- /HISTORY -->


<!-- CONTRIBUTE/ -->

## Contribute

[Discover how you can contribute by heading on over to the `CONTRIBUTING.md` file.](https://github.com/RobLoach/docpad-plugin-htmlmin/blob/master/CONTRIBUTING.md#files)

<!-- /CONTRIBUTE -->


<!-- BACKERS/ -->

## Backers

### Maintainers

These amazing people are maintaining this project:

- Rob Loach (https://github.com/robloach)

### Contributors

These amazing people have contributed code to this project:

- Rob Loach (https://github.com/robloach) - [view contributions](https://github.com/RobLoach/docpad-plugin-htmlmin/commits?author=RobLoach)

[Become a contributor!](https://github.com/RobLoach/docpad-plugin-htmlmin/blob/master/CONTRIBUTING.md#files)

<!-- /BACKERS -->


<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy; Rob Loach (http://robloach.net)

<!-- /LICENSE -->
