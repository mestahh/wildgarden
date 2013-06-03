class Plant < ActiveRecord::Base
  attr_accessible :description, :latin_name, :name
end
