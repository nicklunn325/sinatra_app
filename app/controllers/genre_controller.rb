class GenreController < ApplicationController
     
    #* Get Genres List
     get '/genres' do
        @genres = Genre.all
        erb :'genres/index'
    end
    
    #* Get new genre form
    get '/genres/new' do
        if logged_in?
            erb :'genres/new'
        else
            @error = "You must be logged in to create a new genre"
            erb :'sessions/new'
        end
    end
    
    #* Create new genre from form
    post '/genres' do
        binding.pry
        Genre.create(params)
        redirect to '/genres'
    end
    
    #* Get genre show page
    get '/genres/:id' do
        @genre = Genre.find_by(id: params[:id])

        if @genre == nil
            redirect to '/genres'
        end

        erb :'genres/show'
    end
    
    #* Get edit genre form
    get '/genres/:id/edit' do
        @genre = Genre.find(params[:id])
        erb :'genres/edit'
    end

    #* Update Genre
    patch '/genres/:id' do
        genre = Genre.find(params[:id])
        genre.update(params[:genre])
        redirect to "/genres/#{genre.id}"
    end

    #* delete genre
    delete '/genres/:id' do
        genre = Genre.find(params[:id])
        genre.destroy

        redirect to '/genres'
    end 
end