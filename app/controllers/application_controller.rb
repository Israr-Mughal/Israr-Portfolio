class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist
  include SetSource
  include DefaultPageContent

  before_action :set_copyright

  def set_copyright
    @copyright = IMughalViewTool::Renderer.copyright 'Israr Shahid', 'All rights reserved'
  end

end


module IMughalViewTool
  class Renderer
    def self.copyright name,msg
      "&copy; #{Time.now.year} | <b> #{name} </b> #{msg}".html_safe
    end
  end
end