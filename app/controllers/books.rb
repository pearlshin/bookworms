
get '/book/new' do
  # create a new book
  # @book = Book.create(params[:book])
  erb :'books/new_book'
end

post '/book/new' do
  p params
  # title: params[:title], summary: params[:summary]
  @book = Book.create(user_id: session[:user_id], title: params[:book][:title], author: params[:book][:author], summary: params[:book][:summary])
  @userbook = UserBook.create(book_id: @book.id, user_id: session[:user_id])
  redirect ("/user/#{@userbook.user.id}")
end

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


