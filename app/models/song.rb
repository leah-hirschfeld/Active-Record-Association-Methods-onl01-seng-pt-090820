require 'pry'
class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake = Artist.new(name: "Drake")
    if self.artist.nil?
      self.artist = drake
      drake.save
    else 
      self.artist = drake
      drake.save
    end
  end
end
