require "pry"

class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  #Song.all
  def save
    self.class.all << self
  end
  
  #class constructor 
  def self.create
    song = Song.new
    song.save 
    song
  end
  
  #class constructor 
  def self.new_by_name(song_name)
    song = Song.new
    song.name = song_name
    song
  end
  
  #class constructor
  def self.create_by_name(song_name)
    song = Song.new
    song.name = song_name
    @@all << song
    song
  end
  
  #class finder 
  def self.find_by_name(name)
    @@all.find{|song| song.name == name}
  end
  
  #class method 
  def self.find_or_create_by_name(name)
   if !(self.find_by_name(name))
     self.create_by_name(name)
    else 
      self.find_by_name(name)
    end
  end
   
  #class method
  def self.alphabetical
    @@all.sort_by {|song|song.name}

  end
  
  #class constructor 
  def self.new_from_filename(file_name)
    song_split = file_name.split(" - ")
    song = Song.new 
    song.name = song_split[1].split('.')[0]
    song.artist_name = song_split[0]
    song
  end
  
  
  
  #class constructor 
  def self.create_from_filename(file_name)
    song = self.new_from_filename(file_name)
    @@all << song
  end
 
  
  #class method
  def self.destroy_all
    @@all.clear
  end
end
