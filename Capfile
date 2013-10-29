set :application,           'shoppe-website'
set :repository,            'git://github.com/tryshoppe/website.git'
set :scm,                   'git'
set :branch,                'master'
set :deploy_via,            :remote_cache
set :git_enable_submodules, 1
set :ssh_options,           {:forward_agent => true}
set :rails_env,             "production"
set :use_sudo,              false
set :deploy_to,             "/opt/rubyapps/shoppe-website"
set :user,                  'rubyapps'
set :assets_role,           [:app]
set :config_files,          ['database.yml', 'session_token.yml']

load 'deploy'
load 'deploy/assets'
require "bundler/capistrano"

before 'deploy:finalize_update', 'deploy:symlink_extras'

role :db,   "tryshoppe.com", :primary => true
role :app,  "tryshoppe.com"

namespace :deploy do
  task :symlink_extras, :roles => [:app, :web] do
    run "ln -s #{shared_path}/config/database.yml #{release_path}/config/database.yml"
    run "ln -s #{shared_path}/config/session_token.yml #{release_path}/config/session_token.yml"
    run "ln -s #{shared_path}/CHANGELOG.md #{release_path}/db/CHANGELOG.md"
    run "ln -s #{shared_path}/docs #{release_path}/docs"
  end
  
  task :start, :roles => :app  do
  end

  task :stop, :roles => :app  do
  end

  task :restart, :roles => :app do
    run "mkdir -p #{current_path}/tmp && touch #{current_path}/tmp/restart.txt"
  end
  
end

