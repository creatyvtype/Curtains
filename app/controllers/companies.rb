#display companies
get '/companies' do
  erb :"companies/index"
end

get '/companies/:id' do
  erb :"companies/show"
end
