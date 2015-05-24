#vote page

get '/vote/new' do
  if logged_in?
    @performances = Performance.all
    @vote_types = VoteType.all
    erb :"voting/new"
  else
    redirect '/vote/login'
  end
end

get '/vote/login' do
  erb :"voting/login"
end

#stores vote, updates ratings
post '/vote/new' do
  @vote_types = VoteType.all
  @vote_types.each do |vote_type|
    Vote.create(
      user_id: current_user.id,
      performance_id: params[:performance_id],
      vote_type_id: vote_type.id,
      score: params["#{vote_type.criteria}"][:score],
      comment: params["#{vote_type.criteria}"][:comments]
    )
  end
  redirect '/vote/thanks'
end

get '/vote/thanks' do
  erb :'voting/thanks'
end