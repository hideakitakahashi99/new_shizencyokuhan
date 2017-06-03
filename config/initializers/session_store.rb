# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store
Rails.application.config.session_options = {
	:key => '_taskapp_session',
	:expire_after => 20.years
}
 
