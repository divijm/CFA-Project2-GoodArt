# Good Art

Good Art empowers artists living with homelessness or disabilities through the celebration and sale of their artwork. Good Art is about creating opportunity, empowerment, and validation. This project was created as part of our second major project at Coder Factory Academy.

### How to access

https://good-art-dm.herokuapp.com/.
Best used with Google Chrome.

## Overview

1. Project Brief
2. Getting Started
3. Design Journey
4. Development
5. Future

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
| pry   | gem 'pry' | allows for improved debugging |
| faker | gem 'faker' | allows you to make fake data easily |

## Design Journey

#### Ideation

To gain inspiration for ideas, I explored the interests of all four individuals. This allowed me to discover what is important to them and hence, making the job of trying to impress them more reasonable!

In the very early stages, the news of trying to tackle poverty through chickens and eggs, got me quite excited! The Gates Foundation had heavily invested on this solution and I was set on trying to leverage this solution and add some scalability to it - and by doing so, I would have impressed the Gates's!

![Imgur](http://i.imgur.com/Sh1ZRZ4.jpg?1)
![Imgur](http://i.imgur.com/xzeLx9u.jpg?1)

Soon after though, I realised that I had not come up with an actionable solution, even after seeking inputs from other fellow students, and had to go back to the drawing board for more ideas. In this brainstorming session, I came up with three possible ideas:
1. A Book Summary Marketplace (Bill is voracious reader - so are Obama and Rupert I imagine)
![Imgur](http://i.imgur.com/kNQsL7e.jpg?1)

2. Rate an Agent. Housing Market in Australia is of the charts. Agents are adding fuel by practices that are driving up the price.
![Imgur](http://i.imgur.com/bUxvEcX.jpg?1)

3. Good Art. Helping Artists from struggling communities to get their artwork sold.
![Imgur](http://i.imgur.com/k6iBVO2.jpg?1)

Good Art seemed like it had the most potential for impact and after gaining some insight from fellow students, I decided to start fleshing out Good Art in more detail.

#### Wireframing

To start wire-framing properly, I really had to understand why I was interested in building Good Art at the first place.

Hence, I started by listing out the problems:

![Imgur](http://i.imgur.com/qaCGf5u.jpg?1)

Which eventually led me to the why:

![Imgur](http://i.imgur.com/Rc8ZOh9.jpg?1)

With this in mind, I could now think about creating some user stories. I did this on Trello where I listed all the possible features that multiple stakeholders might have. From here, it was a matter of understanding the requirements and expectations of the project and to estimate how long the project would take to complete considering my development skill level and time available.

![Imgur](http://i.imgur.com/Yf7O3Jz.png)

After the user stories were created, I went through the 'Donut-Sprinkle' methodology and highlighted the key features which I needed to have for my app to be working as an MVP. This then allowed for the low-fidelity wireframing to be quite straightforward.

Homepage -
![Imgur](http://i.imgur.com/GHZ6pTX.jpg?1)
Homepage, P2 -
![Imgur](http://i.imgur.com/SEFVZJQ.jpg?1)
Artworks -
![Imgur](http://i.imgur.com/8FxAtG6.jpg?1)
Artworks, P2 -
![Imgur](http://i.imgur.com/zFTHuxB.jpg?1)

And finally, before development could begin, I drew up a quick sketch of my Entity Relationship Diagram:

![Imgur](http://i.imgur.com/F1VkXxH.jpg?1)

## Development

#### Agile

Agile methodologies were planned at the start on Trello to keep track of all the progress:
![Imgur](http://i.imgur.com/rUvkVoW.png)

But once the project was well underway I found myself to be using it less and relying more on simple post-it notes with a checklist.
![Imgur](http://i.imgur.com/dhXRstq.jpg)

This is an area for improvement for me as without doubt, in a future workplace, it would be expected to be using task management tools like Trello so the team can collaborate and work more efficiently.

#### Github

Github and version control was essential to the development of my project. I continually created and merged branches as new features were developed/implemented.

#### Code Review

Code reviews were conducted by other students in class. One student focused on logic/code structure, while another primarily reviewed testing. In addition to in person-code reviews, Codeclimate was used to assess code quality and adjust as required.

#### Challenges

There were many challenges which I faced while completing this project:

- Image Display on the Index Pages and then being able to click on them to go to the Show Pages was quite challenging and frustrating!
- Devise Registration/Login forms not working after styling
- Logo Alignment was so frustrating!
- Google Maps integration - it included multiple JS files which doubled up and meant that there were a lot of side effect issues on other code. Also probably is the reason why even on localhost the app runs/loads slow!
- Various issues with database and migration files - often many, many hours were spent to find where the problem was, only to realise that I had to restart my damn server!
- Time challenges and fighting with myself with what features to have/not have!

#### Bugs

- Stylised signup forms don't work. Workaround by having another form section on the left hand side of the page lol!

## Future

- Have a proper dashboard for users and admin
- Have more sophisticated payment system - auction/bid style
- Convert the money into tokens - which can be used for other products/services which are available to artists community
- Have an approval process after item has been bought/sold etc
- More javascript for increased dynamic viewing
- More focused on mobile-friendly and accessibility
- Include more API integration - upload photos through your Instagram account perhaps?
- More Stylised
- Just more!

### That's it for now folks!
