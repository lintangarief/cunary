class DocumentationController < ApplicationController
  
  layout 'page'
  
  def page
    file =  Rails.root.join('docs', params[:path].gsub(/[^a-z0-9\-\/]+/, '') + ".md")
    if File.exist?(file)
      @markdown = File.read(file)
    else
      head :ok, 'X-Cascade' => 'pass'
    end
  end
  
end
