require 'rubygems'
require 'bundler/setup'

# Super lean
# run(lambda do |env|
#   # Wanna be convinced that jetty can use nio?
#   # sleep(10)
#   [200, {'Content-Type' => 'text/plain'}, ['OK']]
# end)

# This drops performance from ~825 req/s down to ~750 req/s
# Not too shabby
require 'app'
run Service

