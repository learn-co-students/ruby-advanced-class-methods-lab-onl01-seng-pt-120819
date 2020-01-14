class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
   Song.self.all << self.new
  end

  def Song.new_by_name(name)
    song = Song.new_by_name
  end
  
  def Song.create_by_name(name)
    song.name = name
    @@all << song
  end
  
  def Song.find_by_name(name)
    @@all.find{ |song| song.name == name}
  end

   def Song.find_or_create_by_name(name)
    name.each_with_index(1) do |song, index|
         puts "#{index}.#{song}"
    end
    
    def Song.alphabetical%w()
      array.sort
    end
    
    def Song.new_from_filename(name)
      song.name.split ("").collect{|song| song.name << mp3}.join("")
      artist_name = Taylor Swift
    end

   def self.destroy_all
     self.all.clear
   end
   
end
