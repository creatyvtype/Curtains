#vote page
get '/vote/new' do
  erb :"voting/new"
end

#stores vote, updates ratings
post '/vote/new' do

  redirect '/'
end
