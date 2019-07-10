require 'sinatra'
require 'tilt/erb'

enable :sessions


get '/' do
    erb :index, :layout => :main_layout
end

not_found do
    status 404
    erb :oops
end