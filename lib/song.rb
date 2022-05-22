require "pry"

class Song

@@count = 0  
@@genres = []
@@artists = []
attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
   
@name = name
@artist = artist
@genre = genre
@@count += 1
@@artists.push(artist)
@@genres.push(genre)

end

def self.count
    @@count
end

def self.artists
    @@artists.uniq
    # return_array = []
    # @@artists.each do |artist|
    #     unless return_array.includes? artist do 
    #         return_array.push(artist)
    #     end 
    # end
    # return_array
end

def self.genres
    @@genres.uniq
end

def self.genre_count
    @@genres.tally
    # return_hash = {}
    # return_hash.default = 0
    # @@genres.each do |genre|
    #     if return_hash.includes?(genre) do
    #         return_hash[genre] +=1
    #     else 
    #         return_hash[genre] = 1
    #     end
    # end
    # return_hash
end

def self.artist_count
    @@artists.tally
end


end