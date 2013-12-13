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
      {extension,templateData,file,content} = opts

      # Ensure we are acting on a HTML document.
      if extension == 'html' and file.type == 'document'
        # Prepare
        htmlminOptions = {}

        # Allow use of global config options.
        for own key, value of @getConfig()
          htmlminOptions[key] = value

        # Allow overriding using the document options.
        if templateData.document.htmlmin or false
          for own key, value of templateData.document.htmlmin
            htmlminOptions[key] = value

        # Render
        try
          opts.content = @htmlmin(content, htmlminOptions);
        catch err
          return next(err)

      # Done, return back to DocPad
      return next()
