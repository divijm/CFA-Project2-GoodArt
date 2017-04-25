# Good Art

Good Art empowers artists living with homelessness or disabilities through the celebration and sale of their artwork. Good Art is about creating opportunity, empowerment, and validation. This project was created as part of our second major project at Coder Factory Academy.

## Overview

1. Project Brief
2. Problem
3. Getting Started
4. Design Journey
5. Development
6. Future

## Project Brief

The project brief was to create a two sided platform and app to pitch to one of these three people (and to try and impress them!):
- Barack Obama
- Rupert Murdoch
- Bill & Melinda Gates

The project had to also meet the following requirements:

* Create your application using Ruby on Rails.
* Demonstrate knowledge of Rails conventions.
* Use postgresql database in development.
* Use an API (eg. Omniauth, Geocoding, Maps, other..).
* Use appropriate gems.
* Use environmental variables to protect API keys etc.
* Implement a payment system for your product.
* Your app must send transactional emails (eg. using Mailgun).
* Your app should have an internal user messaging system.
* Your app will have some type of searching, sorting and or filtering capability.
* Your app will have some type of file uploading capability (eg. images).
* Your app will have authentication (eg. Devise, must have full functionality in place).
* Your app will have authorisation (users have restrictions on what they can see and edit).
* Your app will have an admin dashboard for the admin user to administrate the site.
* The core functionality of your application needs to be tested with Rspec.
* Document your application with a README that explains how to setup, configure and use your application.

## Problem

## Getting Started

#### Installation

Clone the project:
```ruby
git clone https://github.com/divijm/CFA_Project2_GoodArt.git
```

Change into the project directory, and install the dependencies:
```ruby
bundle install
```

Create a database on your local machine:
```ruby
rails db:create
```

Migrate your database:
```ruby
$ rails db:migrate
```

Run the app by starting your server:
```ruby
rails server
```

Access it through your browser:
```ruby
http://localhost:3000
```

#### Gem Installations

Within the rails project, folder  *Gemfile* the following gems were installed:

| Gem     | Installation | 	Usage   |
| :------- | ----: | :---: |
| bootstrap-sass | gem 'bootstrap-sass' |  CSS framework   |
| devise | gem 'devise' |  authentication solution    |
| rolify    | gem 'rolify'   |  authorization system  |
| geocoder    | gem 'geocoder'   |  allows location mapping   |
| googlemaps api    | gem 'gmaps4rails'   |  displays map   |
| ratyrate   | gem 'ratyrate'   |  enable ratings   |
| ransack |   gem 'ransack'   | allows searcha and filtering |
| paperclip    | gem 'paperclip'   |  image uploading   |
| simple form   | gem 'simple_form'   |  CSS for forms   |
| omniauth-facebook   | gem 'omniauth-facebook'   |  allows sign-in through facebook   |
| stripe  | gem 'stripe'  | allows money transactions to occur |
| rpsec    | gem 'rspec-rails'   |  allows testing   |
| factory girl    | gem 'factory_girl_rails'   |  coupled with testing   |

## Design Journey

## Development

## Future

### That's it for now folks!
