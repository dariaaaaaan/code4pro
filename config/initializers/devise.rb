
Devise.setup do |config|

  config.mailer_sender = 'Darian <darianmacdonald@me.com>'


  require 'devise/orm/active_record'

  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]  
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  

  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  require 'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '88883561689-18i0gkllbp8oh7huc91km6e6ll584ba2.apps.googleusercontent.com', 'h591gLE9fsSxzUjdQrMqAqIg', {access_type: "offline", approval_prompt: ""}

  require 'omniauth-facebook'
  config.omniauth :facebook, '1114540298558507', 'a19f650763ef714baabcbd5da54f12f5'

  require 'omniauth-github'
  config.omniauth :github, 'a8fb466e9106dc6838d5', '0660c132a70d69a9b5b6ff76f0a46a7481600ceb', scope: "user:email"
end
