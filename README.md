# README

## Convert api only rails 7 app to full application and develop

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

> rails s


## Deploy locally as production

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

