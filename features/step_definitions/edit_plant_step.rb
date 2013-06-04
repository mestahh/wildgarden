When(/^I visit the edit plant path$/) do
  visit edit_plant_path(@plant)
end

When(/^I change the plants data$/) do
  fill_in 'plant_name', :with => 'changedname'
  fill_in 'plant_latin_name', :with => 'changed latin'
  fill_in 'plant_description', :with => 'changed desc'
  click_button 'Modositas'
end

Then(/^the data should be changed$/) do
  plant = Plant.find(@plant.id)
  plant.name.should eq('changedname')
  plant.latin_name.should eq('changed latin')
  plant.description.should eq('changed desc')
end