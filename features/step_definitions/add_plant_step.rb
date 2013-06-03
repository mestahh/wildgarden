Given(/^I visit the add plant page$/) do
   visit new_plant_path
end

When(/^I fill in the form and submit it$/) do
  fill_in 'plant_name', :with => 'bokor'
  fill_in 'plant_latin_name', :with => 'bokrus latinus'
  fill_in 'plant_description', :with => 'this is a cool bokor'
  click_button 'Felvetel'
end

Then(/^I should have a new plant in the database$/) do
  Plant.count.should eq(1)
end

Then(/^should see the all plants page$/) do
  current_path.should eq(plants_path)
end

Given(/^I have a plant$/) do
  @plant = FactoryGirl.create(:plant)
end

When(/^I click on the show plant link$/) do
  visit plant_path(@plant)
end

Then(/^I should see the plant detail page$/) do
  page.should have_content 'Leiras'
end