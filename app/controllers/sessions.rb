get '/login' do
  erb :'users/login'
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:hashword])
    session[:id] = user.id
    redirect '/users/profile'
  else
    # alert_invalid_credentials
    erb :'users/login'
  end
end

get '/logout' do
  session[:id] = nil
  redirect '/'
end
