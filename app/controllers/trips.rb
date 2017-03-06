get '/trips' do
  @trips = Trip.all
  erb :'trips/index'
end

get '/trips/new' do
  @trip = Trip.new
  erb :'trips/new'
end

post '/trips' do
  # if logged_in?
  @trip = Trip.create(destination: params[:destination], description: params[:description], details: params[:details], host_id: session[:id])
  puts params
  redirect '/trips'
# end
end

get '/trips/:id' do
  @trip = Trip.find_by(id: params[:id])
  erb :'trips/show'
end
