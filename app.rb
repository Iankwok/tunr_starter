class Tunr < Sinatra::Base

  # General route actions
  get '/' do
    erb :home
  end

  get '/about' do
    erb :about
  end

  # RESTful Artist Controller Actions
  # index - show all artist
  get '/artists' do
    @artists = Artist.all
    erb(:"artists/index")
  end

  # new - reutrn a form to create new artist
  get '/artists/new' do
    @artist = Artist.new
    erb(:"artists/new")
  end

  # create - receive params to create a new Artist
  post '/artists' do
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect("/artists/#{@artist.id}")
    else
      erb(:"artists/new")
    end
  end

  # show - given an ID show specific artist
  get '/artists/:id' do
    @artist = Artist.find(params[:id])
    erb(:"artists/show")
  end

  # edit - given a form to edit a specific artist
  get '/artists/:id/edit' do
    @artist = Artist.find(params[:id])
    erb(:"artists/edit")
  end

  # update - given data update artist
  put '/artists/:id' do
    @artist = Artist.find(params[:id])
    if @artist.update_attributes(params[:artist])
      redirect("/artists/#{artist.id}")
    else
      erb(:"artists/edit")
    end
  end

  # delete - given the id delete  artist
  delete '/artists/:id/delete' do
    @artist = Artist.find(params[:id])
    if @artist.destroy
      redirect('/artists')
    else
      redirect("/artists/#{@artist.id}")
    end
  end

end
