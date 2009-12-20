namespace :heroku do
  desc "Deploy"
  task :deploy do
    sh "git push heroku master"
  end
end