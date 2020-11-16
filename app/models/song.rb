require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    binding.pry
    if Artist.include? "Drake"
      self.artist == "Drake"
    else
      drake = Artist.new(name: "Drake")
      self.artist = drake
      self.artist
      drake.save
    end
  end
end
