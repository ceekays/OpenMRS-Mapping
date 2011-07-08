# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_drug_mapper_session',
  :secret      => 'ae92de14288397a33d22a9e8c21b784b383717185b9a65fba9b454282cdd96af3a34c0f1130e23e4d460aca12c3b73a5b26d08f7ccf32937306873587db7f30a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
