require 'pry'

class Artist
  include Paramable
  extend Memorable,Findable
  attr_accessor :name
  attr_reader :songs

  @@artist = []

  def initialize
    @@artist << self
    @songs = []
  end

  def self.all
    @@artist
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

end
