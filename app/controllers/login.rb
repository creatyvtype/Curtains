#login page
get '/sessions/new' do
  erb :"login/login"
end

#processes login stuffs
post '/sessions/new' do

end

#form to create login
get '/sessions/create' do
  erb :"login/create_login"
end

#creates login
post '/sessions/create' do
  redirect '/'
end

#logs out
post '/sessions/logout' do
  redirect '/'
end
