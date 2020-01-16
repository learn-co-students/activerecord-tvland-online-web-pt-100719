class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters 
  
    def full_name
        "#{self.first_name} + #{self.last_name}"
    end 

    def list_roles
       characters = self.characters.name
       role = self.characters.shows.name
       "#{characters} - #{role}"
    end 
end