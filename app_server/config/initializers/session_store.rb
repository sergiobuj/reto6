# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_app_server_session',
  :secret      => '9c5a96de27a35db216cabb2e37269122b8f0912db92f6f37732b7832f3ac0c19945b3c3b1287778f2810ed3b537a89f561a9a23813834481f0afdfed7421b670'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
