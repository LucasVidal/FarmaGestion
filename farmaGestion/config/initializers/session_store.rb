# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_farmaGestion_session',
  :secret      => '14f87b276d88467e3e720c20a999bd633dc0c61db3c1bf9abd24a7db9d2dd78614418ef76bf0126abeff0854bfa99a189d12f7fcb9d405f95329c21f0cdd49c8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
