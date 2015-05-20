
set :default_stage, "production"



require 'capistrano/bundler'

# set :rvm_ruby_string, '2.2.0'
# set :rvm_type, :user


set :application, 'shizencyokuhan'
set :repo_url, 'git://github.com/hideakitakahashi99/shizencyokuhan.git'
set :deproy_to, '/var/www/deploy01/'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

 set :deploy_via, :remote_cache
 set :scm, :git
 set :brunch, 'master'
set :use_sudo, false

set :keep_releases, 5

server '153.122.50.163', user: 'hideaki', roles: %w{web app db}

set :user, "hideaki"
set :password, "dai108dainaikakusouridaijinn"

# set :format, :pretty
 
# RVM
# set :rvm_path, '/home/deploy01/.rvm/'
# set :rvm_bin_path, "app/bin"
# set :rvm_lib_path, "app/lib"

# set :linked_files, %w{config/database.yml}
set :rbenv_type, :system
set :rbenv_ruby, '2.1.2'
 set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
 set :rbenv_path, '~/.rbenv'
 set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
 set :rbenv_map_bins, %w{rake gem bundle ruby rails}
 set :rbenv_roles, :all # default value
# set :default_env, { path: "/usr/local/rbenv/shims:/usr/local/rbenv/bin:$PATH" }
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do
  desc "cause Passenger to initiate a restart"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end

  desc "reload the database with seed data"
  task :seed do
    run "cd #{current_path}; rake db:seed RAILS_ENV=#{rails_env}"
  end
end
  


  after "deploy:update_code", :bundle_install
  desc "install the necessary prerequisites"
  task :bundle_install, roles => :app do
    run "cd #{release_path} && bundle install"
  end





