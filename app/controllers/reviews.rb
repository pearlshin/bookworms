get '/reviews/:id' do
  @review = Review.find(params[:id])
  erb :'reviews/review'
end


get '/reviews/:id/edit' do
  @review = Review.find(params[:id])
  erb :'reviews/edit_review'

end

put '/reviews/:id' do
  @review = Review.find(params[:id])
  @review.update(params[:review])
  # redirect ("/reviews/#{@review.id}")
  redirect ("/book/#{@review.book.id}")
end

delete '/reviews/:id' do
  @review = Review.find(params[:id]).destroy
  redirect ("/book/#{@review.book.id}")
end
