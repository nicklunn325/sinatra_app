class SessionController < ApplicationController

    get '/login' do
        erb :'sessions/new'
    end

    post '/login' do
        #find user by username
        user = User.find_by_username(params[:user][:username])
        #check to see if user is found and has proper password
        if user && user.authenticate(params[:user][:password])
            #log them in by setting session
            session[:user_id] = user.id
            redirect to '/genres'
        else
            redirect to '/login'
        end
    end


    delete '/logout' do
        session.clear
        redirect to '/login'
    end


    
end