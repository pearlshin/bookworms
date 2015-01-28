get '/' do
  if current_user
    erb :index
  end
  erb :index
end



get '/login' do
  erb :'auth/login'
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  user.try(:authenticate, params[:user][:password])
  session[:user_id] = user.id
  if request.xhr?
    redirect '/'
  else
    # set_error('uh oh!')
    redirect '/'
  end
end


get '/signup' do

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