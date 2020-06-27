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
    self.all.find {|i| i.name == name_of_song}
  end
  
  def self.find_or_create_by_name(name_of_song)
    found_song = self.all.find {|i| i.name == name_of_song}
    if found_song == nil
      s = self.new
      s.name = name_of_song
      s.save
      s
    else
      found_song
    end
  end
  
  def self.alphabetical
    self.all.sort_by { |i| i.name }
  end
  
  def self.new_from_filename(mp3_file)
    s = self.new
    s.name 
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
