class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end
  
  def save
    self.class.all << self
  end
  
    
   def self.create
    song =  Song.new
    song.save 
    song
   end

   def Song.save
   
   end 
   
  def self.new_by_name(name)
    song =  Song.new
    song.name = name
    song
  end 
  
  def self.create_by_name(name)
    song =  Song.create
    song.name = name
    song
  end 
  
  def self.find_by_name(name)
    @@all.find do |song| song.name == name
    end 
  end 
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name) 
       self.find_by_name(name)
     else
       self.create_by_name(name)
  end 
end 

def self.alphabetical
  @@all.sort_by{|song| song.name}
end 
  def self.all
    @@all
  end

  def self.new_from_filename(name)
    music_hit = name.split(" - ") 
    music_hit
    artist = music_hit[0]
    # song_name = music_hit[1].split(".")[0]
    song_name = music_hit[1].gsub(".mp3","")
    full_song = Song.new
    full_song.name = song_name
    full_song.artist_name = artist 
    full_song
  end 
  
  def self.create_from_filename(name)
    music_hit = name.split(" - ") 
    music_hit
    artist = music_hit[0]
    # song_name = music_hit[1].split(".")[0]
    song_name = music_hit[1].gsub(".mp3","")
    full_song = Song.create
    full_song.name = song_name
    full_song.artist_name = artist 
    full_song 
  end 
  def self.destroy_all
    @@all.clear
  end 
def song_save
  song.save
end

end
