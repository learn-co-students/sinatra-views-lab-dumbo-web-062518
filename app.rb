require 'pry'

class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = 'Joe'
		# binding.pry
		erb :goodbye
	end

	get '/date' do
		@date = Date.today.strftime("%A, %B %d, %Y")
		erb :date
	end

end
