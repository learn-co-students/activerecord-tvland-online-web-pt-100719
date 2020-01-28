require 'pry'
class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  
  def actors_list
    #binding.pry
    actors = []
    aid = self.characters.first.actor_id 
   act =  Actor.find_by(id: aid)
   actors << "#{act.first_name} #{act.last_name}"
   actors
  end
  
end