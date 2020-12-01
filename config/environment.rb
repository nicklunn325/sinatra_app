# require gems 
require 'bundler/setup'
Bundler.require 

# require all models/views/controllers
require_all 'app'

# connect to DB

ENV['SINATRA_ENV'] ||= 'development'

ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: "db/#{ENV['SINATRA_ENV']}.sqlite"
)