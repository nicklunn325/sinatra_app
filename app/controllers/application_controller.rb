class ApplicationController < Sinatra::Base

    configure do 
        set :views, 'app/views'
        enable :sessions
        set :sessions_secret, 'random_string'
    end

    helpers do
        def logged_in?
            !!session[:user_id]
        end
    end
    
end