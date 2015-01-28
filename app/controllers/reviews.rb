get '/reviews/:id' do
  @review = Review.find(params[:id])
  erb :'reviews/review'
end


get '/reviews/:id/edit' do
  @review = Review.find(params[:id])
  erb :'reviews/show'

end

put '/reviews/:id' do
  @review = Review.find(params[:id])
  @review.update(params[:review])
  # redirect ("/reviews/#{review.id}")
  redirect ("/reviews/#{@review.id}")
end

# put '/comment/:id/edit' do
#   @comment = Comment.find(params[:id])
#   @comment.update(params[:comment])
#   redirect ("/comment/#{@comment.id}")
# end