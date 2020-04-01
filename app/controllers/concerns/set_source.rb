module SetSource
    extend ActiveSupport::Concern

    included do 
         before_action :set_source
    end
 
    def set_source
      session[:source] = params[:q] if params[:q].present?
      puts "under session f/n #{params[:q]} \n" * 3
    end

end