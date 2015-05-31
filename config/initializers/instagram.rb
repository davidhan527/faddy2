require "instagram"

CALLBACK_URL = "http://localhost:3000/oauth/callback"

Instagram.configure do |config|
  config.client_id = ENV.fetch('INSTAGRAM')
  config.client_secret = ENV.fetch('INSTAGRAM_SECRET')
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end
