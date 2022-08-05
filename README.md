# README

## Convert api only rails 7 app to full application

`ensure postgres and rvm is installed`

> rvm install 3.1.2

> rvm use 3.1.2

> gem install redis

> gem install rails -v 7.0.3.1

> `clone api only app and create a new branch`

> cd `project_directory`

> cp config/examples/database.yml config/database.yml

> cp config/examples/master.key config/master.key

`request and save master key at config/master.key`

> cd ..

> rails new `project_directory` -d postgresql

> cd `project_directory`

> bundle install

> rake db:create

> rake db:migrate

> rake db:seed


## Local Deployment with scss

> ./bin/dev


## Deploy locally as production

### scss steps

[dartsass-rails](https://github.com/rails/dartsass-rails/blob/main/README.md)

#### Installation (not needed for production)

1. Run `./bin/bundle add dartsass-rails`
2. Run `./bin/rails dartsass:install`

#### Building in production

The `dartsass:build` is automatically attached to `assets:precompile`, so before the asset pipeline digests the files, the Dart Sass output will be generated.




### deployment steps


> cd `project_directory`

> cp config/examples/database.local_production.yml config/database.yml

> cp config/examples/master.key config/master.key

`request and save production master key at config/master.key`


> RAILS_ENV=production bundle exec bundle install

> RAILS_ENV=production bundle exec rake db:create

> RAILS_ENV=production bundle exec rake db:migrate

> RAILS_ENV=production bundle exec rake db:seed

> RAILS_ENV=production bundle exec rake assets:precompile

> RAILS_ENV=production bundle exec rails s

