module ApplicationHelper
  
  def link_to(name = nil, options = {}, html_options = {}, &block)
    if html_options[:nav_item] && @active_nav == html_options.delete(:nav_item)
      html_options[:class] ? html_options[:class] << " active" : html_options[:class] = "active"
    end
    super
  end
  
  def markdown(text)
    text = text.gsub(/\{\{partial\:(\w+)\}\}/) do
      render :partial => "documentation/#{$1}"
    end
    
    markdown = Redcarpet::Markdown.new(Shoppe::MarkdownRenderer, :fenced_code_blocks => true, :autolink => true, :space_after_headers => true)
    html = markdown.render(text).html_safe
    html
  end
  
end
