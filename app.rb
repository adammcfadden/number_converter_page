require("sinatra")
require("sinatra/reloader")
require("./lib/numbers_to_words")
also_reload("lib/**/*.rb")

get("/") do
  erb(:index)
end

get("/converted_word") do
  @converted_word = params.fetch('number_to_convert').to_i().numbers_to_words()
  @number_to_convert = params.fetch('number_to_convert')
  erb(:converted_word)
end
