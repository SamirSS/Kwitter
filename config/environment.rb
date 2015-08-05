require 'bundler'
Bundler.require

require './models/tweet'
require './models/user'

configure :development do
  set :database, "sqlite3:db/database.db"
end