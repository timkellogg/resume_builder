require 'sinatra'
require './lib/resume_builder.rb'

get '/' do 
	erb :index
end 

post '/resume' do 
	
	
	
	erb :resume 
end 