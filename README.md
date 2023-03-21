# Pizza Restaurants API

**Overview**

This is a simple RESTful API that allows users to create and manage pizza restaurants and the pizzas they serve. It is built with Ruby on Rails.

**Installation**

To install the application, follow these steps:
1. Clone the repository to your local machine: `https://github.com/zac717/SA-01-Phase-4-Code-Challenge-Pizzas.git`
2. Navigate to the project directory: `cd restaurant-pizza-api`
3. Install the necessary gems: `bundle install`
4. Create and migrate the database: `rails db:create && rails db:migrate`
5. (Optional) Seed the database with sample data: `rails db:seed`

**Usage**

To run the application, start the Rails server: `rails server`. The API can then be accessed using a tool like Postman.

**Models**

The following relationships have been established:

- A `Restaurant` has many `Pizza`s through `RestaurantPizza`
- A `Pizza` has many `Restaurant`s through `RestaurantPizza`
- A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`

**Validations**

The `RestaurantPizza` model has a validation that requires the `price` to be between 1 and 30.

**Routes**

The following routes have been set up:

- GET `/restaurants`: Returns a list of all restaurants in the database
- GET `/restaurants/:id`: Returns information about a specific restaurant, including the pizzas it serves
- DELETE `/restaurants/:id`: Deletes a specific restaurant and any associated `RestaurantPizza`s
- GET `/pizzas`: Returns a list of all pizzas in the database
- POST `/restaurant_pizzas`: Creates a new `RestaurantPizza` and associates it with an existing `Pizza` and `Restaurant`

**Errors**

If a request is made with invalid parameters, the API will respond with a JSON error message.

**Contributing**

Bug reports and pull requests are welcome on GitHub at https://github.com/zac717/SA-01-Phase-4-Code-Challenge-Pizzas.git. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant code of conduct.

**License**

This application is available as open source under the terms of the MIT License.

**Code of Conduct**

Everyone interacting in the Pizza Restaurants API project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the code of conduct.
