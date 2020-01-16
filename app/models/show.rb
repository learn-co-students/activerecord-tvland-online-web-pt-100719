class Show < ActiveRecord::Base
    belongs_to :networks
    has_many :characters
    has_many :actors, through: :characters 

    def actors_list
        actors = []
        self.actors.map do |a|
            actors << a.name
        end 
        actors
    end 
  
end