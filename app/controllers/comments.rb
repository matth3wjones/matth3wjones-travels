get '/trips/:id/comments' do
  @trip = Trip.find_by(id: params[:id])
  @comment = Comment.create(trip_id: params[:id], guest_id: session[:id], text: params[:text])
end
