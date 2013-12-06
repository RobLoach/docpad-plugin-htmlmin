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
    render: (opts,next) ->
      # Prepare
      {inExtension,outExtension,templateData} = opts

      # Upper case the text document's content if it is using the convention html.textile
      if inExtension in ['htmlmin'] and outExtension in ['html', null]
        # Prepare
        config = @getConfig()

        # Allow overriding using the document options
        if templateData.document.htmlmin or false
          for own key, value of templateData.document.htmlmin
            config[key] = value

        # Render
        try
          opts.content = @htmlmin(opts.content, config);
        catch err
          return next(err)

      # Done, return back to DocPad
      return next()
