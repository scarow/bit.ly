get '/deer.ly' do
  erb :index
end

post '/deer.ly' do
  @short = Url.create(original: params[:link])
  erb :short
end

get '/deer.ly/:short' do
  short = params[:short]
  @url = Url.find_by_shortened("deer.ly/#{short}")
  @url.increment
  erb :orig
end


