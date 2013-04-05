require 'spec_helper'

feature 'Google search' do
  background do
    Capybara.app_host = 'http://www.google.co.jp'
  end

  scenario 'search' do
    visit '/'
    fill_in 'gbqfq', with: 'bdd wikipedia'
    click_button 'gbqfb'

    click_link 'Behavior-driven development - Wikipedia, the free encyclopedia'
    page.should have_content 'A ubiquitous language is a (semi-)formal language that is shared by all members of a software development team — both software developers and non-technical personnel.'
  end
end
