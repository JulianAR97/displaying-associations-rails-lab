class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    artist.name
  end

  def format_song
    "#{artist_name.titlecase} - #{title.titlecase}"
  end
end
