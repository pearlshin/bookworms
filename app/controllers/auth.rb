get '/' do
  if current_user
    @books = Book.all
    erb :index
  end
  erb :index
end



get '/login' do
  erb :'auth/login'
end


post '/login' do
  # p session[:error]
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    # "inside if"
    redirect "/" if request.xhr?
  else
    # "inside else"
    error_msg("Please check your login information.")
    redirect '/'
  end

end


get '/signup' do
  erb :'auth/signup'
end

post '/signup' do
  user = User.create(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect "/"
  else
    redirect "/login"
  end
end

get '/logout' do
  session.clear
  redirect "/"
end


get '/user/:id' do
  @user = User.find(params[:id])

  erb :'auth/user_profile'
end

get '/user/:id/reviews' do
  # shows all the reviews for every book a user has made
end