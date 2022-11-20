# Personal notes
## Resources
* Heroku - login with yahoo account
* Namecheap - where I bought my domain name and set C-name

## Working with the rails console on Heroku
$ heroku run rails c
irb> ActiveRecord::Base.connection.tables  // this lists all tables

## 2022 updates
### October 2022
My heroku account was locked at some point in the time since I last worked with this app. After a few back and forths with Heroku support, the account was reactivated but in order to not waste time, I created a new Heroku account with my yahoo account. I was able to get the site working on the Heroku supplied domain (almost forgot the database migrate steps). On Oct 28, 2022 I purchased andyknolla.dev (andyknolla.com was available but preferred .dev).

### Nov 9, 2022
I upgraded Heroku plans. Heroku made it mandatory as they no longer have free services. I did the minumum for postgres but upgraded to "hobby dyno" for the web app (eco shares dynos and sleeps, leading to slow load times when the site hasn't been accessed in 30 minutes). 

Also today, andyknolla.dev is working for the first time! 