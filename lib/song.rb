class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    s = self.new
    s.save
    s
  end
  
  def self.create_by_name(name_of_song)
    s = self.new
    s.name = name_of_song
    s.save
    s
  end
  
  def self.new_by_name(name_of_song)
    s = self.new
    s.name = name_of_song
    s
  end
  
  def self.find_by_name(name_of_song)
    self.all.find {
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
