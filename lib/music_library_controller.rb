class MusicLibraryController

  @@all = []

  def initialize(path="./db/mp3s")
    #@path=path
    MusicImporter.new(path).import
    #@list = []
    #@list << music_importer.import
    #binding.pry
    #@list.each do  |song|
      #@@all << song unless @@all.detect {|songs| songs == list}
      #binding.pry
    #end

  end

  def call
    music_choice = ""
    until music_choice == "exit"
      puts "Welcome to your music library!"
      puts "To list all of your songs, enter 'list songs'."
      puts "To list all of the artists in your library, enter 'list artists'."
      puts "To list all of the genres in your library, enter 'list genres'."
      puts "To list all of the songs by a particular artist, enter 'list artist'."
      puts "To list all of the songs of a particular genre, enter 'list genre'."
      puts "To play a song, enter 'play song'."
      puts "To quit, type 'exit'."
      puts "What would you like to do?"
      music_choice = gets.strip.downcase
    end
  end

  def list_songs

    binding.pry

=begin
    Song.all.sort{ |a, b| a.name <=> b.name }.each.with_index(1) do |s, i|
      puts "#{i}. #{s.artist.name} - #{s.name} - #{s.genre.name}"
        #binding.pry
    end
=end

    
    #binding.pry
=begin
    counter = 0
    ordered = []
    @list[0].each do |song|
      ordered << song
    end
    ordered.sort_by {|a| a.name}
    ordered.each do |song|
      counter += 1
      puts "#{counter}. #{song}"
    end
=end
  end

end
