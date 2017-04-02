class Actor < ActiveRecord::Base

  has_many :characters
  has_many :shows, through: :characters
  # an actor can play many characters
  # an actor that plays many characters is in many shows

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    self.characters.map {|character| "#{character.name} - #{character.show.name}" }
  end

end
