# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class HtmlMinPlugin extends BasePlugin
    # Name
    name: 'htmlmin'

    # Configuration
    config:
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

    # Constructor
    constructor: ->
      # Prepare
      super

      # Require HTML Minifier
      @htmlmin = require('html-minifier').minify

      # Chain
      @

    # Render some content
    renderDocument: (opts,next) ->
      # Prepare
      config = @getConfig()
      {extension, file, content} = opts
      htmlminOpts = file.get('htmlmin')

      # Ensure we are acting on a HTML document.
      if extension == 'html' and file.type == 'document' and htmlminOpts
        # Prepare
        htmlminOpts = {} if typeof htmlminOpts == 'boolean'

        # Allow use of global config options.
        for own key, value of config when key isnt 'environments'
          htmlminOpts[key] ?= value

        # Render
        try
          opts.content = @htmlmin(content, htmlminOpts);
        catch err
          return next(err)

      # Done, return back to DocPad
      return next()
