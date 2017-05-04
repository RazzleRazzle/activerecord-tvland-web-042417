require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    f = self.first_name
    l = self.last_name
    name = "#{f} #{l}"
  end


  def list_roles
    c = self.characters.map { |char| char.name }
    s = Show.all.map {|char| char.name }
    roles = "#{c[0]} - #{s[0]}"
  end

end
