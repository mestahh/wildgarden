require 'factory_girl'

FactoryGirl.define do 
  
  factory :plant do |plant|
    plant.name 'Bokor'
    plant.latin_name 'Bokrus latinus'
    plant.description 'Blabalbalabal'
  end
end