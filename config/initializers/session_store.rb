# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_woot_session',
  :secret      => '296f50f859634aa6fe733e03519ea7bd4a2eaae1f4484ee52f5a543a2058baea392fbd2352a94fe2f864f490020601d7b09700f438fcb51d971ca48e1afa722b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
