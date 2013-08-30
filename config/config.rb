ConfigRoot = File.expand_path(File.dirname(__FILE__))
db_config = YAML::load(File.open(File.join(ConfigRoot, 'database.yml')))
ActiveRecord::Base.establish_connection(db_config)

Twitter.configure do |config|
  config.consumer_key = 'CONSUMER_KEY'
  config.consumer_secret = 'CONSUMER_SECRET'
  config.oauth_token = 'OAUTH_TOKEN'
  config.oauth_token_secret = 'OAUTH_TOKEN_SECRET'
  config.connection_options = Twitter::Default::CONNECTION_OPTIONS.merge(:request => { 
    :open_timeout => 50,
    :timeout => 100
  })
  Client = Googl.client('usarname@gmail.com', 'password')
end