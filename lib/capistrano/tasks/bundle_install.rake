namespace :bundle do 
desc 'Restart unicorn application'
  task :install do
    on roles(:app), in: :sequence do
       execute "rbenv rehash"
      # within fetch(:latest_release_directory) do
          execute "cd #{release_path} && bundle install"
       #end
    end
  end
end