module Shoppe
  class MarkdownRenderer < Redcarpet::Render::HTML
    
    def header(text, header_level)
      "<h#{header_level + 1}>#{text}</h#{header_level + 1}>"
    end
    
    def block_code(code, language)
      Pygments.highlight(code, :lexer => language)
    rescue 
      content_tag(:pre, code)
    end
    
  end
end
