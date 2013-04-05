require 'capybara/rspec'

Capybara.current_driver = :selenium
Capybara.app_host = 'http://www.google.co.jp'

Capybara.run_server = false
