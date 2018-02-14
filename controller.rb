require "sinatra"
require "sequel"
require_relative "models/dao"

enable :sessions

set :public_folder, File.dirname(__FILE__) + '/static'


get '/' do 
  erb :login, :layout=>:base
end

get '/proyectos' do
  erb :proyectos, :layout=>:base
end