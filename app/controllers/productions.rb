#display productions
get '/productions' do
  erb :"productions/index"
end

#display specifics on a production
get '/productions/:id' do
  erb :"productions/show"
end
