require 'bundler'
Bundler.require()

def movie(name, release_year, description)
  {:name => name.to_s, :release_year => release_year.to_s, :description => description.to_s}.to_json
end

get '/' do
  cross_origin
  movie("CaddyShack", "1992", "Bill Murray is a Gopher Killer... RAH RAH RAH!")
end

get '/api/Rambo' do
  cross_origin
  movie("Rambo", "1998", "Slyvester Kills EvERYONENNENNNEE... AHHH BITCHEs DIeeee!")
end

get '/api/Sandlot' do
  cross_origin
  movie("Sandlot", "1994", "You PLAY ball Like A GIRL")
end
