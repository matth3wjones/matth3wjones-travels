post '/trips/:trip_id/comments' do
  puts params
  comment = Comment.create(text: params[:text], trip_id: params[:trip_id], user_id: session[:id])
  comment.valid?
  puts comment.errors.full_messages
  @trip = Trip.find_by(id: params[:trip_id])
  @comment = Comment.all
  erb :"trips/show"
end
