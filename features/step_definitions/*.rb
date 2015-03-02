Given(/^I have cleared browser cookies$/) do
  browser = Capybara.current_session.driver.browser
  browser.manage.delete_all_cookies
end

And(/^I am on the USCP home page$/) do
  visit ui_url('/')
end

And(/^I am able to see the USCP home page$/) do
  expect(page).to have_selector(:id, 'section_home')
end

When(/^I hover on the log in avatar$/) do
  find('.site-nav-firefly-module').hover
end

When(/^I click Log in in navigation fly out$/) do
  find('.firefly-signin-btn').click
end

Then(/^the log in page loads$/) do
  expect(page).to have_selector('main.login')
end

When(/^I enter "(.*?)" in the "(.*?)" field$/) do |field_value, field_name|
  fill_in(field_name, with: field_value)
end

When(/^I click log in button on SAM form$/) do
  find('button.primary.left.last').click
end

Then(/^I should be logged in to the home page$/) do
  wait_for_pageload
  step %{I am able to see the USCP home page}
  step %{I hover on the log in avatar}
  expect(page).to have_css('.site-nav-firefly-dropdown.authenticated.subscribed')
end

Then(/^I should see the following text in the log in fly out "(.*?)"$/) do | link_text |
  expect(page).to have_link(link_text)
end

#Then(/^I should see "(.*?)"$/) do |modal_class|
#  expect(page).to have_css(modal_class)
#end

#When(/^I close the modal window$/) do
#  find('.cc-close_modal_link').click
#end

#Then(/^I can click log out button$/) do
#  find('.site-nav-firefly-span').hover
#  find('a.ff-logout-btn.sam-returns').click
#end
