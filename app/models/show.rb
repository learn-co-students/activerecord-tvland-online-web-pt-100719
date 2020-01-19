class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    array_of_actors = self.actors.collect do |actor|
      "#{actor.first_name} #{actor.last_name}"
    end
    array_of_actors
  end

end
