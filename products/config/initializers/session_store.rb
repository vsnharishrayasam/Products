# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_products_session',
  :secret      => 'f1778614a1e3f0459975704e29ebad4550a6eb8446051b8784bb0effbb1d8095e5105ab083b7a8ad6ae246a71790ae2bba36abc72e4cfcc9c71039e70d72dacc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
