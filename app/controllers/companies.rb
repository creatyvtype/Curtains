#display companies
get '/companies' do
  @companies = Company.all
  erb :"companies/index"
end

get '/companies/:id' do
  @company = Company.find(params[:id])
  @productions = @company.productions
  erb :"companies/show"
end
