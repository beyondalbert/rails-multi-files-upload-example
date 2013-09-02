# Be sure to restart your server when you modify this file.

RailsMultiFilesUploadExample::Application.config.session_store :cookie_store, key: '_rails-multi-files-upload-example_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# RailsMultiFilesUploadExample::Application.config.session_store :active_record_store
# ActionController::Dispatcher.middleware.insert_before(ActionController::Base.session_store, FlashSessionCookieMiddleware, ActionController::Base.session_options[:key])
if defined?(::Rails.configuration) && ::Rails.configuration.respond_to?(:middleware)
	  ::Rails.configuration.middleware.insert_after 'ActionDispatch::Cookies', FlashSessionCookieMiddleware, ::Rails.configuration.session_options[:key]
end

