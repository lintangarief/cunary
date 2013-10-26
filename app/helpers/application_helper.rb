module ApplicationHelper
  
  def link_to(name = nil, options = {}, html_options = {}, &block)
    if html_options[:nav_item] && @active_nav == html_options.delete(:nav_item)
      html_options[:class] ? html_options[:class] << " active" : html_options[:class] = "active"
    end
    super
  end
  
end
