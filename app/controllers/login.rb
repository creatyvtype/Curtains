#login page
get '/sessions/new' do
  erb :"login/login"
end

#processes login stuffs
post '/sessions/new' do
  if params[:email]
    @user = User.find_by(email: params[:email])
    if @user && @user.password == (params[:password])
      log_in(@user)
      redirect '/vote/new'
    else
      redirect '/sessions/new/error'
    end
  end
end

get '/sessions/new/error' do
  erb :"login/error"
end

#form to create login
get '/sessions/create' do
  erb :"login/create_login"
end

#creates login
post '/users/new' do
  User.create(email: params[:email], password: params[:password])
  redirect '/sessions/new'
end

get '/sessions/logout' do
  erb :"login/logout"
end

#logs out
post '/sessions/logout' do
  log_out
  redirect '/'
end
