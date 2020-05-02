module ApplicationHelper

    def login_helper style = ''
        if current_user.is_a?(GuestUser) 
           (link_to "Sign Up", new_user_registration_path, class:style ) + 
           (link_to "Login",  new_user_session_path,  class:style)
        else
          link_to "Logout", destroy_user_session_path, method: :delete , class:style
        end
    end

    def source_helper(layout_name)
        if session[:source] 
            greeting = " Thanks for visiting me from #{session[:source]} and you on the #{layout_name}"
            content_tag(:p ,  greeting, class:"source-greeting")
        end
    end
    
    def alerts
        alert = (flash[:alert] || flash[:error] || flash[:notice])
        alert_generator alert
    end
    
    def alert_generator msg
         js add_gritter(msg, :title => "Please pay attention!", sticky: false ) if msg
    end
end
