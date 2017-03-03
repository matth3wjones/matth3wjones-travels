get '/' do
  @trips = Trip.all
  erb :'trip'
end
