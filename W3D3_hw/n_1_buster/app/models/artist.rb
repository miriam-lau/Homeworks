class Artist < ActiveRecord::Base
  has_many(
    :albums,
    class_name: "Album",
    foreign_key: :artist_id,
    primary_key: :id
  )

  def n_plus_one_tracks
    albums = self.albums
    tracks_count = {}
    albums.each do |album|
      tracks_count[album.title] = album.tracks.length
    end

    tracks_count
  end
#figure out what you want from query
#construc the query and save to a var.

  def better_tracks_query
    albums = self.albums.select("albums.*, COUNT(*) AS tracks_count")
      .joins(:tracks).group("albums.id")

    album_counts = {}
    albums.each do |album|
        album_counts[album.title] = album.tracks_count
    end

    album_counts
  end
end

select * from albums join tracks where tracks.albumid = albums.album_id

albums
id name
A Astr
B Bstr
C Cstr

tracks
album_id id
A 1
A 2
A 3
B 4
B 5
C 6

A Astr 1
A Astr 2
A Astr 3
B Bstr 4
B Bstr 5
C Cstr 6

Astr A 3
Bstr B 2
Cstr C 1
end
select albums.name, albums.id, COUNT(*) AS tracks_count from albums
join tracks
group by albums.id

tracks_count
15
