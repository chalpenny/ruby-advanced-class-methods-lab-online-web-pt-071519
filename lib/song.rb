require 'pry'

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
    new_song = Song.new
    new_song.save
    new_song
  end

  def self.new_by_name(title)
    new_song = Song.new
    new_song.name = title
    new_song
  end

  def self.create_by_name(title)
    new_song = self.create
    new_song.name = title
    new_song
  end

  def self.find_by_name(title)
    @@all.find {|x| x.name == title}
  end

  def self.find_or_create_by_name(title)
    self.find_by_name(title) || self.create_by_name(title)
  end

  def Song.alphabetical
    self.all.sort_by {|s| s.name}
  end

  def Song.new_from_filename(song)
    #parse data
    data = song.split(" - ")
    #binding.pry
    attributes = data.collect do |x|
        artist_name = data[0]
        name = data[1]
        Song.artist_name = artist_name
        Song.name = name
    #set title and artist attributes
    #remove "mp3" from end
    #return a newly created song instance
    end
  end

end
