default_run_options[:pty] = true

set :application,       "My Application"
set :deploy_to,         "/path/to/my/app"
set :deploy_via,        :remote_cache
set :current_dir,       "current"
set :user,              "my-ssh-user"
set :scm,               :git
set :repository,        "git@a-git-host:/home/git/my-project.git"
set :env,               fetch(:env, "production")
set :branch,            fetch(:branch, "release")

role :web,              "app1"
role :web,              "app2"
role :db,               "db"

set :use_sudo,          false
set :keep_releases,     3

set :app_symlinks,      ["/media", "/var"]
set :app_shared_dirs,   ["/media", "/var"]
set :app_shared_files,  [] 
