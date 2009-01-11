# Settings specified here will take precedence over those in config/environment.rb

# In the development environment your application's code is reloaded on
# every request.  This slows down response time but is perfect for development
# since you don't have to restart the webserver when you make code changes.
config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

# Don't care if the mailer can't send: set to false; if care: set to true
# If you’re having trouble getting your mail to go out in development mode, 
# you may want to change this line in your development environment: 
#
# Sending emails with TLS and/or authentication-only SMTP servers
# http://wiki.rubyonrails.org/rails/pages/HowToSendEmailsWithActionMailer
# http://www.google.com/search?hl=en&q=ruby+rails+smtp+email+server+authentication&btnG=Search

config.action_mailer.raise_delivery_errors = true
config.action_mailer.perform_deliveries = true

# Set up email server
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => 'smtp.att.yahoo.com',
  :domain => 'yahoo.com',
  :user_name => 'philipperobert@sbcglobal.net',
  :password => '5acgajtf',
  :port => '465',
  :authentication => :login
}

CONTACT_RECIPIENT = 'softserv@sbcglobal.net'