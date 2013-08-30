raspberry-tweet
===============

## Routines to use twitter from raspberry
You can use twitter from your Raspberry Pi implementing one or more cronjobs

## Requeriments
* Ruby version >= 1.9.3
* Rubygems
* Some coffee

## How to use?

* First sign up at http://dev.twitter.com and create a aplication

* Now can use your "consumer key", "consumer secret", "access token" as "oauth_token" and "access token secret" as "oauth_token_secret" for config the file "config/config.rb"

* Get the root folder should be called "raspberry-tweet" and run the command
```console
bundle install
```

* Now create migrations with
```console
rake db:migrate
```

* Enjoy