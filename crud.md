#Create
    post '/photos'
    get '/photos/new'
    Photo.create
    photo = Photo.new
    photo.save

#Read
    get '/photos'
    get '/photos/:id'
    Photo.all
    Photo.find_by(id: params[:id])
    Photo.find(params[:id])
    Photo.find_by_id(params[:id])

#Update
    patch '/photos/:id'
    get '/photos/:id/edit'
    Photo.update

#Delete
    delete '/photo/:id'
    photo = Photo.find(params[:id])
    photo.destroy
    photo.clear ?


