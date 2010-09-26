# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_CharlieSoftwareBlog_session',
  :secret      => 'ce0f8050c56463f9ef1e1c6a63601914bdbe6bfe5c0c5a230d755f7f3e3d34171b4a76d2854076257e2823223a84be4e74ee0ed4d6d31b5e8721906c1b825281'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
