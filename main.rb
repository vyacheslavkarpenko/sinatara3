require 'sinatra'# load sinatra
require 'sinatra/activerecord'
require 'redcarpet'
require 'puma'
require 'json'
require 'rack'
require 'pry'
require 'sinatra/json'
require 'sinatra/jbuilder'

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/app')
require 'model_post' # models here
require 'model_user'
require 'routes' # routes
require 'helpers' # helpers
$LOAD_PATH.unshift(File.dirname(__FILE__) + '/config')
require 'environments' # config setup
require 'constants' # constant

after do
  ActiveRecord::Base.clear_active_connections!
end
