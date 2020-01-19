class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    roles = [] # Collecting all the roles
    array_of_characters = self.characters.collect do |character| # Iterating over an actor's characters and collecting the character name
      character.name # Brings back the character's name
    end
    array_of_shows = self.shows.collect do |show| # Iterating over an actor's shows and collecting the show name
      show.name # Brings back the show's name
    end
    role = array_of_characters.concat array_of_shows # Role is equal to the value of array_of_characters array AND array_of_shows
    roles << role.join(" - ") # Joins the two strings together using a hyphen
    roles # Returns the value we asked for
  end

end
