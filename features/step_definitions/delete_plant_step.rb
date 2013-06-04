When(/^I visit the all plants page$/) do
  visit plants_path
end

When(/^I click on the delete link$/) do
  click_link 'Torles'
end

Then(/^the plant should be deleted$/) do
  Plant.count.should eq(0)
end