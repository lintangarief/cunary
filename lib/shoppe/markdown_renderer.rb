module Shoppe
  class MarkdownRenderer < Redcarpet::Render::HTML
    
    def header(text, header_level)
      "<h#{header_level + 1}>#{text}</h#{header_level + 1}>"
    end
    
    def block_code(code, language)
      title = nil
      code.gsub!(/\A\:\:(.*)$/) { title = $1 ; nil }
      String.new.tap do |s|
        s << "<p class='codeTitle'>#{title}</p>" if title
        s << Pygments.highlight(code, :lexer => language)
      end
    rescue 
      "<div class='highlight'><pre>#{code}</pre></div>"
    end
    
  end
end
