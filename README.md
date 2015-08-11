# Week 6

To run this Rails app on your laptop:

1. Clone this repository
1. bundle install
1. rake db:migrate
1. rake db:seed
1. rails server

At this point, you should be able to browse to `http://localhost:3000` and you should see a list of awesome movies.  

*NOTE: On some systems, you may need to prefix steps 3 and 4 with 'bundle exec' i.e. 'bundle exec rake db:migrate'.*

**WINDOWS 7 USERS**: You may have to modify the Gemfile by adding this line after you clone:

``` ruby
gem 'coffee-script-source', '1.8.0'
```

Then, the `bundle install` and `bundle exec rails server` might actually work.
