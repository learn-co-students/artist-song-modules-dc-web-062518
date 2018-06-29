require 'pry'

class Song
  include Paramable
  extend Memorable, Findable
  attr_accessor :name
  attr_reader :artist

  @@song = []

  def initialize
    @@song << self
  end

  def artist=(artist)
    @artist = artist
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end

  def self.all
    @@song
  end
end
