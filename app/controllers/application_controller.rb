class ApplicationController < Sinatra::Base

    configure do 
        set :views, 'app/views'
    end

    #* Get Genres List
    get '/genres' do
        @genres = Genre.all
        erb :'genres/index'
    end
    
    #* Get new genre form
    get '/genres/new' do
        erb :'genres/new'
    end
    
    #* Create new genre from form
    post '/genres' do
        Genre.create(params)
        redirect to '/genres'
    end
    
    #* Get genre show page
    get '/genres/:id' do
        "show page"
    end
    
    #* Get edit genre form
    get '/genres/:id/edit' do
    end

    #* Update Genre
    patch '/genres/:id' do
    end

    #* delete genre
    delete '/genre/:id' do
    end

    
end