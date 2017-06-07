module Jekyll

  class SwaggerTag < Liquid::Tag
    @spec = nil

    def initialize(tag_name, markup, tokens)
      @spec = markup
      super
    end

    def render(context)
      id = Digest::MD5.hexdigest(@spec)
      %Q{<div id="#{id}"></div><script type="text/javascript">window.onload=function(){loadSwaggerUi("#{@spec}", "#{id}");};</script>}
    end
  end
end

Liquid::Template.register_tag('swagger', Jekyll::SwaggerTag)
