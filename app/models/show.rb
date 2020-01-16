class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
 

    def actors_list
        actors = []
        self.actors.map do |a|
            actors << a.full_name
        end 
        actors
    end 
  
end