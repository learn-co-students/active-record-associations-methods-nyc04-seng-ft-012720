class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if Artist.all.any?{|artist| artist.name == "Drake"}
      self.artist = Artist.all.find{|artist| artist.name == "Drake"}
    else drake = Artist.new(name: "Drake")
      drake.save
      self.artist = drake
    end

  end
end