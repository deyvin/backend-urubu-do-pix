# frozen_string_literal: true

require 'sinatra'
require 'sinatra/activerecord'
require 'dotenv'
Dotenv.load

set :database, { adapter: 'sqlite3', database: ENV['DB_PATH'] }
