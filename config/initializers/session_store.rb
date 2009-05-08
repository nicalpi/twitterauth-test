# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_twitterauth_session',
  :secret      => '8ec709c9f59ea86c97f4a1c973019878b91d290bf80766938048ba0e320bf59b6814ab81ec39ef3d65b8029e7fabce3495022dc8f9ec9d60c2a0ee5a281c3f7e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
