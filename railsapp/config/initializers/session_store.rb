# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railsapp_session',
  :secret      => 'd2afa759e50e524cd416a5474b020368c02ce4a6435c01224796a3471738f0e35dce8386d79cfdb46323a0e08775dcd3be8ba4d2a94e61ac344f36d3dd92feb1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
