get '/trips' do
  @trips = Trip.all
  erb :'trips/index'
end

get '/trips/new' do
  @trip = Trip.new
  erb :'trips/new'
end

post '/trips' do
  if logged_in?
    @trip = Trip.create(destination: params[:destination], description: params[:description], details: params[:details], arrive: params[:arrive], depart: params[:depart], host_id: session[:id])
    redirect '/trips'
  end
end

get '/trips/:id' do
  @trip = Trip.find_by(id: params[:id])
  erb :'trips/show'
end

get '/trips/:id/edit' do
  @trip = Trip.find(params[:id])
  erb :"/trips/edit"
end

put '/trips/:id' do
  trip = Trip.find(params[:id])
  trip.update_attributes(params[:trip])
  redirect '/trips/#{trip.}'
end

delete '/trips/:id' do
  trip = Trip.find(params[:id]).destroy
  redirect '/trips'
end
