# specify name of app and repo

set :application, "learningrails"

# server information

role :app, "snapath.com/learingrails"
role :web, "snapath.com/learingrails"
role :db,  "snapath.com/learingrails", :primary => true

# accessing code repository

default_run_options[:pty] = true
  set :repository,  "git@github.com:philipperobert/learningrails_9.git"
  # If NOT using Subversion to manage your code, specify your SCM below:
  set :scm, "git"
  set :branch, "master"
  # If NOT deploying to /u/apps/#{application} on target
  # servers (which is the default), you can specify the actual location
  #via the :deploy_to variable:
  set :deploy_via, :remote_cache
  set :deploy_to, "/var/www/apps#{application}"


# How cap should talk with server since running locally
set :user, "deploy"
set :admin_runner, "deploy"

# passenger tasks

namespace :deploy do

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_path}/tmp/restart.txt"
  end
  
  desc "Start Application == not needed for Passenger"
  
  task :start, :roles => :app do
    # nothing -- needed to override default cap start task when using Passenger
  end
  
end






