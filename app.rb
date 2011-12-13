require 'rubygems'
require 'sinatra/base'
require 'json'
require 'httparty'

class Service < Sinatra::Base
  set :env => :production
  get '/' do
    status 200
    "pong"
  end
  run! if __FILE__ == $0
end

