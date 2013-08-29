test = ["http://google.com", "http://yahoo.com", "http://hackernews.com"]

test.each_with_index do |u,i|
  Url.create!(:original => u, :shortened => "deer.ly/#{i}")
end  

