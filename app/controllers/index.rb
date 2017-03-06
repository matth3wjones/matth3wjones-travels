get '/' do
  @trips = Trip.all
  erb :'trips/index'
end
