get '/book/:id' do
  # shows particular book's page with reviews
  @book = Book.find(params[:id])
  @reviews = Review.where(book_id: params[:id])
  erb :'books/show'
end

post '/book/:id' do
  # ajax call to append review to a book
  if request.xhr?
    # p id
    # p params[:text]
    review = Review.create(user_id: session[:user_id], book_id: params[:id], text: params[:text])

    erb :'books/_review', locals: {review: review}, :layout => false
  else
    # review = Review.create(user_id: session[:user_id], book_id: params[:id] text: params[:text])
    redirect("/book/#{review.id}")
  end
end

