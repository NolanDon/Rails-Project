# Jungle

## Screenshots
![Screenshot from 2019-12-22 19-25-20](https://user-images.githubusercontent.com/48977789/71331908-5af5d500-24f1-11ea-834d-4da3188b65ea.png)
![Screenshot from 2019-12-22 19-24-47](https://user-images.githubusercontent.com/48977789/71331909-5af5d500-24f1-11ea-9010-df3b58fe305c.png)
![Screenshot from 2019-12-22 19-24-22](https://user-images.githubusercontent.com/48977789/71331910-5af5d500-24f1-11ea-92ce-31cc783bd0c9.png)
![Screenshot from 2019-12-22 19-24-00](https://user-images.githubusercontent.com/48977789/71331911-5af5d500-24f1-11ea-8315-97507bd48814.png)
![Screenshot from 2019-12-22 17-23-56](https://user-images.githubusercontent.com/48977789/71331912-5b8e6b80-24f1-11ea-84f2-c2dfb982e778.png)

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
