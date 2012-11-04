#$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
#require "rvm/capistrano"
load 'deploy'
require "bundler/capistrano"
load 'deploy/assets'
default_run_options[:pty] = false
set :application, 'www.share-travel.net'
set :scm, "git"
set :repository, "git@github.com:zlx/sharetravel.git"
set :branch, "master"

set :deploy_to, "/home/soffolk/code/sharetravel"
role :domain, application, :primary => true
role :web, application, :primary => true
role :app, application, :primary => true
role :db, application, :primary => true

set :user, "soffolk" #proc { Capistrano::CLI.password_prompt("Server User: ") }
set :password, "zhu.lianxin" #proc { Capistrano::CLI.password_prompt("Server Password : ") }
set :use_sudo, false

#set :rvm_ruby_string, "ruby-1.9.2-p290"
#set :rvm_ruby_string, "ree-1.8.7-2012.02"
#set :rvm_type, :user

namespace :deploy do
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "cd #{current_release} && touch tmp/restart.txt"
  end
end

before "deploy:restart", "deploy:migrate"
