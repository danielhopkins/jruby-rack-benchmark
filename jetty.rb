require 'rubygems'
require 'bundler'
Bundler.setup

require 'java'
require 'jetty-6.1.26/lib/jetty-6.1.26.jar'
require 'jetty-6.1.26/lib/servlet-api-2.5-20081211.jar'
require 'jetty-6.1.26/lib/jetty-util-6.1.26.jar'
require 'jetty-6.1.26/lib/management/jetty-management-6.1.26.jar'

require 'jruby-rack'
require 'rack/jetty_standalone/jetty_runner'

jetty_options = {
  :host                     => 'localhost',
  :port                     => 4567,

  # jruby-rack context parameters:
  'jruby.rack.layout_class' => 'RailsFilesystemLayout',
  'gem.path'                => '.',
  'rackup'                  => IO.read('config.ru')
}

server = Rack::JettyRunner.new(jetty_options)
server.run
server.join
