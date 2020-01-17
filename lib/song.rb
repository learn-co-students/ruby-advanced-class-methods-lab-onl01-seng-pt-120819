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
    song = self.new
    self.all << song
    song
  end

  def self.new_by_name(title)
    song = self.new
    song.name = title
    song
  end

  def self.create_by_name(title)
    song = self.create
    song.name = title
    song
  end

  def self.find_by_name(title)
    find_song = self.all.detect { |song| song.name == title }
    find_song
  end

  def self.find_or_create_by_name(title)
    find_song = self.find_by_name(title)
    if find_song
      find_song
    else
      self.create_by_name(title)
    end
  end

  def self.alphabetical
    sort_songs = self.all.sort_by { |song| song.name }
    sort_songs
  end

  def self.new_from_filename(filename)
    new_songs = filename.split(" - ")
    new_songs[1] = new_songs[1].chomp(".mp3")
    song = self.new
    song.name = new_songs[1]
    song.artist_name = new_songs[0]
    song
  end

  def self.create_from_filename(filename)
    create_song = self.new_from_filename(filename)
    song = self.create
    song.name = create_song.name
    song.artist_name = create_song.artist_name
    song
  end

  def self.destroy_all
    self.all.clear
  end
  
end