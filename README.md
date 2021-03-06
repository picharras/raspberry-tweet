raspberry-tweet
===============

## Routines to use twitter from raspberry
You can use twitter from your Raspberry Pi implementing one or more cronjobs

## Requeriments
* Ruby version >= 1.9.3
* Rubygems
* bundler(may need to be root): `gem install bundler`
* Some coffee

## How to set up?

* First sign up at http://dev.twitter.com and create a aplication

* Now can use your `consumer key`, `consumer secret`, `access token` as `oauth_token` and `access token secret` as `oauth_token_secret` for config the file "config/config.rb"

* Get the root folder should be called "raspberry-tweet" and run the command
```console
bundle install
```

* Creates a MySQL database and configures the file "config/database.yml"

* Now create migrations with
```console
rake db:create
```
```console
rake db:migrate
```

* Enjoy

## How to user?

* Say the current time
```console
ruby tells_time.rb
```

* Post a note from google news
```console
ruby news.rb
```

* Do some re-tweet related to raspberry
```console
ruby retweet.rb
```

* Say hello to new followers
```console
ruby followers.rb
```
## Example

Make a crontab that say hello every 45 minutes and record the output in the file log-followers.log.

Assuming that your folder is inside /home/pi

* Edit the file containing instructions crontab
```console
crontab -e
```

* Enter the following line at end of file
```console
45 * * * * ruby /home/pi/raspberry-tweet/followers.rb >> /home/pi/log-followers.log 2>&1
```

To save press CTRL + O and then ENTER

* Now, execute

```console
crontab -l
```

you should see something like the following

```console
....
45 * * * * ruby /home/pi/raspberry-tweet/followers.rb >> /home/pi/log-followers.log 2>&1
```