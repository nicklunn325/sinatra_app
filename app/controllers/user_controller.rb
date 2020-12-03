class UserController < ApplicationController

    get '/signup' do
        erb :'users/new'
    end

    post '/signup' do
        user = User.new(params[:user])

        if user.save
            session[:user_id] = user.id


            redirect to '/genres'
        else
            @error = user.errors.full_messages.join(" - ")
            erb :'users/new'
        end

    end

    # post '/signup' do
    #     #create a new user AND log them in

    #     #create user
    #     if params[:user].values.any?{|value| value == ""}

    #         redirect to '/signup'
    #     else

    #         user = User.create(params[:user])
    #         #log user in
    #         session[:user_id] = user.id
    #         redirect to '/genres'
    #     end

    # end
end