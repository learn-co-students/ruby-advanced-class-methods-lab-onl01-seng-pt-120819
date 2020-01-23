class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
def new_by_name (song)
  @name = "Blank Space"
end
def create_by_name (song)
 @name = song.new
end
def find_or_create_by_name (alison)
  find @name : name
end
