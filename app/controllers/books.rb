get '/book/:id' do
  @book = Book.find(params[:id])
  @reviews = Review.where(book_id: params[:id])
  p @reviews
  erb :'books/show'
end

