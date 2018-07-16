class App < Sinatra::Base

	Date::DAYNAMES
	Date::MONTHNAMES

	get '/' do
		erb :index
	end

	get '/hello' do
		erb :hello
	end

	get '/goodbye' do
		@name = "Joe"
		erb :goodbye
	end

	get '/date' do
		@today = Time.new
		erb :date
	end


end
