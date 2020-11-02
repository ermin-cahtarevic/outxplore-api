<p align="center">
  <img src="./public/outxplore-logo.png">
</p>

> Find your perfect outdoor experience

## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Setup](#setup)
* [Author](#author)
* [Show your Support](#show-your-support)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## About The Project


This repository holds the Ruby on Rails API from which the React frontend serves the data.

For the authentication of the users I used Sessions.
Inspiration from [this](https://www.youtube.com/playlist?list=PLgYiyoyNPrv_yNp5Pzsx0A3gQ8-tfg66j) playlist.

The API is hosted on Heroku, at this endpoint: [Outxplore API](https://nameless-waters-17056.herokuapp.com/)

  * From there several other endpoints can be accessed
  - `/sessions`
    - POST - for user log in
  - `/registrations`
    - POST - for user sign up
  - `/host_application`
    - POST - for Host application
  - `/listings`
    - POST - for creating a listing
    - GET - for fetching the listings
  - `/listings/:id` 
    - GET - for fetching one particular listing


### Built With

*   Ruby on Rails
*   PostgreSQL
*   Rubocop

## Setup

```
git clone git@github.com:ermin-cahtarevic/outxplore-api.git
```
### Install dependencies

```
bundle install
```

### Start Development Server

```
rails s
```
### Visit this link in your browser
```
http://localhost:3000/
```

### Run Rubocop

```
rubocop
```

### Run tests

```
bundle exec rspec
```

<!-- CONTACT -->
## Author

- Personal website: [ermin.dev](https://ermin.dev)
- Github: [@ermin-cahtarevic](https://github.com/ermin-cahtarevic)
- Twitter: [@ErminCahtarevic](https://twitter.com/ErminCahtarevic)
- Linkedin: [Ermin Cahtarevic](https://www.linkedin.com/in/ermincahtarevic/)

<!-- ABOUT THE PROJECT-->
## Show your support

Give a star if you like this project!

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Microverse](https://www.microverse.org/)
* [Youtube playlist for Authentication inspiration](https://www.youtube.com/playlist?list=PLgYiyoyNPrv_yNp5Pzsx0A3gQ8-tfg66j)