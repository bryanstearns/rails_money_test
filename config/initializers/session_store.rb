# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails_money_test_session',
  :secret      => '4138f894ee7f5a1d066569000611fcdb7751456dfac2264a01baa41496831080e1d91e565f587ec2b3fdca169f4b8b7687d586a703938acfb809a7ff6f8c9a7a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
