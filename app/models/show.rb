class Show < ActiveRecord::Base
    belongs_to :networks

    def actors_list
        actors = []
        self.actors.map do |a|
            actors << a.name
        end 
        actors
    end 
  
end