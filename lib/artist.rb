require "pry"
class Artist
attr_reader :name
@@all = []
  def initialize(name)
    @name=name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    Song.all.find_all {|song| song.artist == self}
  end
  def new_song(name,genre)
    Song.new(name,self,genre)
  end
  def genres
    songs.genre
  end
end
