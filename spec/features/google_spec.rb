require "spec_helper"

feature 'Google search' do
  scenario 'search' do
    visit '/'
    fill_in 'gbqfq', with: 'bdd'
    click_button 'gbqfb'

    page.should have_content 'ビヘイビア駆動開発'
  end
end
