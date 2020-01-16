class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters 
  
    def full_name
        "#{self.first_name} #{self.last_name}"
    end 

    def list_roles
       shows.map do |s|
        s.characters.map do |c|
            "#{c.name} - #{s.name}"
            end 
        end.first 
    end 

    # def list_roles
    #   shows.map { |show|
    #     show.characters.map{ |character|
    #       "#{character.name} - #{show.name}"
    #     }.first
    #   }
    # end
end