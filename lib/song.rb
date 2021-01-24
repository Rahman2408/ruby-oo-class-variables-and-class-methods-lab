class Song
attr_accessor :name, :artist, :genre, :artists, :genres, :count



# @@artist_count={}
# @@genre_count={}
@@count=0
@@artists=[]
@@genres=[]

    def initialize(name, artist, genre)
        @@count +=1
        @name=name
       
        @genre = genre
       
        @artist=artist
       
        
        @@artists << artist
          
        @@genres << genre
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre 
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq 
    end

    def self.genre_count
        result={}
        @@genres.each {|gen| result[gen]= (result[gen] || 0) + 1}
        result
    end
    def self.artist_count
        result={}
        @@artists.each {|a| result[a]= (result[a] || 0) + 1}
        result
    end
end