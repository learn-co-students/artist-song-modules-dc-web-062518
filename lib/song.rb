require 'pry'

class Song
  include Paramable
  extend Memorable, Findable

  attr_accessor :name, :artist
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def initialize
    @@songs << self
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end

end
