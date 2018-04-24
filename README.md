# Food Products
#### Ruby on Rails, 4-20-2018
## Description
Looking for a catering company? Come view what we have to offer in our cuisines. Not sure which of our foods taste good? You can now view our products and see what our customers say about it so you can make the best decision for your next catering needs.

## Setup/Installation

To clone onto your local machine, run the following in the terminal
```
 $ git clone https://github.com/kihuynh/foodproducts
```
go into the project folder
```
$ rake db:create
$ rake db:migrate db:test:prepare
$ bundle install
```
Use if you want to use Faker DB instead <br>
```
$ rake db:seed
```

Run the rails server
`
$ rails s
`
## Current features
- Testing
- CRUD functionality for products
- CRUD functionality for reviews
- Flash messages
- Use Faker gem to seed 50 products and 5 reviews for each product
- List US only items, recent items, and most reviewed products

## Future features
- styling

## Technologies Used
- Ruby On Rails
- Gems (Bootstrap, Faker, Sass, etc)
- Testing (rspec, shoulda-matchers, etc)
- Postgres

## License

*Licensed under MIT license*

Copyright (c) 2018 **_Kimberly Huynh_**
