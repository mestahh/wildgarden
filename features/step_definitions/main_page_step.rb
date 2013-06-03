When(/^I visit the root$/) do
  visit "/"
end

Then(/^I should see the welcome page$/) do
  page.should have_content("Hello, Wildgarden!")
end

When(/^I click on the add plant link$/) do
  click_link 'Noveny hozzaadasa'
end

When(/^click on the back link$/) do
  click_link 'Vissza'
end

