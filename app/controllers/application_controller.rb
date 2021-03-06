class ApplicationController < Sinatra::Base

    configure do 
        set :views, 'app/views'
        enable :sessions
        set :session_secret, 'random_string'
    end

    helpers do
        def logged_in?
            !!session[:user_id]
        end

        def current_user  #memoization
            @current_user ||= User.find_by_id(session[:user_id])

            if @current_user
                @current_user
            else
                @current_user = User.find_by_id(session[:user_id])
            end
        end
    end
    
end