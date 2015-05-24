#display productions
get '/productions' do
  @productions = Production.all
  erb :"productions/index"
end

#display specifics on a production
get '/productions/:id' do
  @production = Production.find(params[:id])
  @company = @production.company
  @performances = @production.performances
  erb :"productions/show"
end
