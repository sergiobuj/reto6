# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_web_server_session',
  :secret      => '0e1e4e541f18126f75cdfb925d83f9943dbd3101ca29ee10778267d6f09820add79ff8169f4e0b98f301d8c2a5f596310dbf6a7936b63e0ea80610b8a2f48461'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
