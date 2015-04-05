
set :default_stage, "production"



require 'capistrano/bundler'

set :rvm_ruby_string, '2.2.0'
set :rvm_type, :user


set :application, 'shizencyokuhan'
set :repo_url, 'git@github.com:hideakitakahashi99/shizencyokuhan.git'

# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

 set :deploy_via, :remote_cache
 set :scm, :git

set :use_sudo, false
set :default_run_options, :pty => true

set :keep_releases, 5

server '153.122.50.163', user: 'hideaki', roles: %w{web app db}

set :user, "hideaki"
set :password, "dai108dainaikakusouridaijinn"

# set :format, :pretty
 
# RVM
set :rvm_path, '/home/deploy01/.rvm/'
set :rvm_bin_path, "app/bin"
set :rvm_lib_path, "app/lib"

# set :linked_files, %w{config/database.yml}
 set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# set :default_env, { path: "/opt/ruby/bin:$PATH" }
# set :keep_releases, 5

namespace :deploy do

 task :set_file_process_owner do
  sudo "chown -r #{hideaki} #{deploy_to}"
end


    desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      run "touch #{current_path}/tmp/restart.txt"
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end


  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end



end
