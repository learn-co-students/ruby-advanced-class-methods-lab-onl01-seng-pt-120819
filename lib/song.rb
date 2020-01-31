require 'pry'
class 
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  binding.pry
  end
end
