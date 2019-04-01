# Spoon (API)

A Tinder-like swiping web app that matches users based on food preferences. Utilizing React, Yelp API, React-Spring-Hooks, Leaflet Maps API, Rails, Postgres

📌 TO SEE OUR WEB APP IN ACTION, view the [demo on YouTube](https://www.youtube.com/watch?v=OA4ye_u4Gfc)

### Dashboard Page
![Spoon1](https://raw.githubusercontent.com/diaaanek/SPOON_Client/master/public/spoon11.png)

### My Plate
![Spoon2](https://raw.githubusercontent.com/diaaanek/SPOON_Client/master/public/myplate.png)

## 🛠 Built With
* [Javascript](https://www.javascript.com/) 
* [React](https://reactjs.org/)
* [Ruby on Rails](https://rubyonrails.org/)
* [Postgres](https://www.sqlite.org/) 

## 📑 Installation Guide

In this repository, you will find the backend for this project built with Rails & Postgres.

The React frontend is located: [here](https://github.com/diaaanek/SPOON_Client)

Our API is live on a server and running restaurant [data](https://spoon-server.herokuapp.com/api/v1/restaurants)

### (1) Run API

If you prefer to get started locally, fork and clone this repo to have the backend API running

Install all dependencies and necessary gems:

`bundle install `

This app uses Postgres, Create database scheme with migrations:

 ` rake db:create`

Seed database:

` rake db:seed `

Start local server:

 ` rails s `


### (2) Fork the front end repo

In the project directory, located:[here](https://github.com/diaaanek/SPOON_Client), you can run:

  `npm i && npm start`

Runs the app in the development mode.<br>
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br>


### 💻 Supporting Versions
- Ruby 2.0.0, 2.1.x, 2.2.x, 2.3.x
- React 

### 🤩 Contributing

Contributions are welcomed!  Fork, fix, then send a pull request.

Bug reports and pull requests are welcome on GitHub at [Spoon repo](https://github.com/diaaanek/SPOON_client), please open Issues to provide feedback.


### 📗 License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
