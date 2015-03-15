class PagesController < ApplicationController
  
  def home
    render :layout => 'home'
  end
  
  def release_notes
    require "open-uri"

    changelog_url = "https://raw.githubusercontent.com/tryshoppe/shoppe/master/CHANGELOG.md"

    begin
      @notes ||= open(changelog_url).read
    rescue SocketError
      @notes = ""
    end
  end
  
end
