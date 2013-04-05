require "#{File.dirname(__FILE__)}/../spec_helper"

feature 'Google search' do
  background do
    Capybara.current_driver = :selenium
    Capybara.app_host = 'http://www.nikki.ne.jp'

  end

  scenario 'search' do
    visit '/'
    sleep 2
    fill_in 'searchBox_nonuser', with: '楽天'
    click_button '検索'
  end
end
