class Show < ActiveRecord::Base
    belongs_to :networks
 

    def actors_list
        actors = []
        self.characters.actors.map do |a|
            actors << a.full_name
        end 
        actors
    end 
  
end