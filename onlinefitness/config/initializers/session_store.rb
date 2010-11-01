# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_onlinefitness_session',
  :secret      => 'a12858e765940917a58a86dfd4b4fa349fadc6c3959530a1de963298004bf8ad52eaa0deb65defa3195b45d45942281022d2be175f55e140f4ba836b2dfecab2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
