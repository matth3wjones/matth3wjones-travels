get '/destinations' do
  @destinations = Trip.all
  erb :'destinations/index'
end

get '/destinations/new' do
  @destination = Trip.new
  erb :'destinations/new'
end

get '/destinations/:id' do
  @destination = Trip.find_by(id: params[:id])
  erb :'trips/show'
end
