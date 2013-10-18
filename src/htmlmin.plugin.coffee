# Export Plugin
module.exports = (BasePlugin) ->
  # Define Plugin
  class HtmlMinPlugin extends BasePlugin
    # Name
    name: 'htmlmin'

    # Configuration
    config:
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
      config = @getConfig()

      # Upper case the text document's content if it is using the convention html.textile
      if inExtension in ['htmlmin'] and outExtension in ['html', null]
        # Prepare
        htmlminOptions = config.htmlminOptions

        # Allow overriding using the document options
        htmlminOptions[key] = value for own key,value of templateData.document.htmlmin if templateData.document.htmlmin

        # Render
        opts.content = @htmlmin(opts.content, htmlminOptions);

      # Done, return back to DocPad
      return next()
