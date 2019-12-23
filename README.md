# Jungle

## Screenshots
![Screenshot from 2019-12-22 19-25-20](https://user-images.githubusercontent.com/48977789/71332016-cb045b00-24f1-11ea-9fe7-3b515ea839c4.png)
![Screenshot from 2019-12-22 19-24-47](https://user-images.githubusercontent.com/48977789/71332017-cb045b00-24f1-11ea-9f2d-d3f435539c62.png)
![Screenshot from 2019-12-22 19-24-22](https://user-images.githubusercontent.com/48977789/71332018-cb045b00-24f1-11ea-946a-63a023110194.png)
![Screenshot from 2019-12-22 19-24-00](https://user-images.githubusercontent.com/48977789/71332019-cb045b00-24f1-11ea-95ce-6b69066647bb.png)
![Screenshot from 2019-12-22 17-23-56](https://user-images.githubusercontent.com/48977789/71332020-cb045b00-24f1-11ea-8ec6-d0b3001827e9.png)


A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe
