class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    s = self.new
    s.save
    s
  end
  
  def self.create_by_name()

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

end
