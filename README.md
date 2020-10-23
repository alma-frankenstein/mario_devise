# Mario's Groceries

#### Created by Alma Frankenstein for Epicodus, 2020

## Description

This app imagines a specialty grocery store that allows users to review products; its goal is to illustrate a many-to-one relationship in SQL. It also aims to illustrate CRUD functionality, Rails, and routing.
The app also uses the Devise gem to allow users and admin to log in and out and alter content.

## Specs

* Allows an admin to add, update, and delete products
* Allows an admin to add, update, and delete reviews for products
* Allows a user to add reviews to products

## Setup

Clone this repo using:

```git clone https://github.com/alma-frankenstein/mario_database mario```

Cd to the mario directory.

Install Bundler with ```gem install bundler```

Each time the Gemfile is changed, run ```bundle install```

Create the databases with ```rake db:create```

Migrate the database and test database with ```rake db:migrate``` and ```rake db:test:prepare```

Seed the databases: ```rake db:seed```

View the app in the server: ```rails s```

To make a certain user an admin:
run ```rails c``` to open a ruby console
```User.all``` to see the users and their IDs
```User.find(id).update :admin => true``` where 'id' is the integer of their ID number

## Technologies Used

* Ruby
* rspec
* Rails
* Capybara
* SQL
* devise

## Contact Details

For questions or to suggestions, please email A.Q.Frankenstein@gmail.com

### License

This software is licensed under the MIT license.

Copyright (c) 2020 Alma Frankenstein