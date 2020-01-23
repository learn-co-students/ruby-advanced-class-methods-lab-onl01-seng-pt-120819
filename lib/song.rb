require 'pry'
class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def self.create
    s = Song.new
    s.save
    return s
  end
  
  def self.new_by_name(n)
    song = self.new
    song.name = n
    return song
  end
    
  def self.create_by_name(n)
    song = self.new
    song.name = n
    @@all << song
    return song
  end 
  
  def self.find_by_name(n)
    @@all.find{|song| song.name == n}
  end
  
  def self.find_or_create_by_name(n)
    if self.find_by_name(n) != nil
      return self.find_by_name(n)
    else
      self.create_by_name(n)
    end
  end
  
  def Song.alphabetical
    all.sort_by{ |obj| obj.name}
  end
  
  def self.new_from_filename(fn)
    song = self.new
    song.name = fn.split(' - ')[1].split('.')[0]
    song.artist_name = fn.split(' - ')[0]
    song
  end

  def self.create_from_filename(fn)
    self.new_from_filename(fn).save
  end
  
  def self.destroy_all
    @@all.clear
  end

  def save
    self.class.all << self
  end

end
