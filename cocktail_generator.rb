require 'rubygems'
require 'sinatra'

get '/' do
  liquors = ["tequila", "vodka"]
  citrus = ["lime juice", "lemon juice"]
	sweets = ["agave syrup", "simple syrup"]
  default_portion = 0.75
  ratio = [1,1,2]
  amounts = ratio.map {|r| r*default_portion}
  base = [liquors.sample, citrus.sample, sweets.sample]
  ingreds = amounts.zip(base)
  @cocktail = ingreds.map{|i,j| "%s oz %s" % [i.to_s ,j]}
  erb :show
end
