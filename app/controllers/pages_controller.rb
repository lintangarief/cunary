class PagesController < ApplicationController
  
  def home
    render :layout => 'home'
  end
  
  def release_notes
    notes_path = Rails.root.join('db', 'CHANGELOG.md')
    if File.exist?(notes_path)
      @notes = File.read(notes_path)
    else
      @notes = ''
    end
  end
  
end
