# AndyKnolla.com
A Rails 5 app, a portfolio of my work, and a blog about web development.

## Synopsis
This application is my personal site including a portfolio of my work. Go to http://andyknolla.com to check it out. In addition to a portfolio, it has a blog where I write about technology, learning experiences and resources.
I
## Learning project
I learned a TON in the process of building this app! My prior experience has been with JavaScript including React, Node and Express.js so I had plenty of unfamiliar problems to work through, such as working with gem sets, version incongruencies,

### Skills and feature highlights:
* MVC architecture
* Authorization & Authentication
* Bootstrap
* ActionCable (new to Rails 5)
* ActiveRecord
* Rails console
* Helper methods
* View helpers
* Generators: scaffolds, models, controllers, migrations

## Acknowledgments
This app started as a project for learning Ruby on Rails with a 40 hour tutorial by Jordan Hudgens on [Udemy](https://www.udemy.com/professional-rails-5-development-course/learn/v4/overview), which I highly recommend. He goes into depth, focusing on core knowledge--like how data flows through a Rails app--that enables you to extend your new skills beyond what is covered explicitly.


## To Run Locally:
1. Fork and clone the repo
2. Clone onto your computer
3. Run $`Bundle install`
4. Setup the database: Run the following commands in the terminal
*  $`rails db:create`
*  $`rails db:migrate`
*  $`rails db:seed`
6. Make a .env folder with the following variables:
```
S3_BUCKET_NAME=
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_REGION=
SECRET_KEY_BASE=
TWITTER_CONSUMER_KEY=
TWITTER_CONSUMER_SECRET=
TWITTER_ACCESS_TOKEN=
TWITTER_ACCESS_SECRET=
```
7. Start the Rails server: $`rails server`
8. Go to localhost:3000
