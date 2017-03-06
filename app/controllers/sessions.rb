get '/login' do
  erb :'users/login'
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
    session[:id] = user.id
    redirect '/users/profile'
  else
    @errors = ["Sorry, the credentials do not match."]
    erb :'users/login'
  end
end

get '/logout' do
  session[:id] = nil
  redirect '/'
end
