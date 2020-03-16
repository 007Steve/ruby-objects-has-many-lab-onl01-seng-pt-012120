class Artist 
   
   attr_accessor :name , :songs
   @@songs_count = []
   def initialize(name)
     @name = name 
    @songs = []
   end
   
  
  def songs
    @songs
  end
  
  def add_song(song)
    song.artist = self
  end
  
  def add_song_by_name(song_name)
    singer = Song.new(song_name)
    add_song(singer)
  end
  
  def self.song_count
    Song.all.size
  end
end