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

    counter = 0
    testhash = {}
    testhash = Song.all.sort {|a,b| a.name <=> b.name}
    testhash.each do |s|
      counter+=1
      puts "#{counter}. #{s.artist.name} - #{s.name} - #{s.genre.name}"
    end
  end

  def list_artists
    counter = 0
    testhash = {}
    testhash = Artist.all.sort {|a,b| a.name <=> b.name}
    testhash.each do |s|
      counter+=1
      puts "#{counter}. #{s.name}" #{} - #{s.name} - #{s.genre.name}"
    end
  end

  def list_genres
    counter = 0
    testhash = {}
    testhash = Genre.all.sort {|a,b| a.name <=> b.name}
    testhash.each do |s|
      counter+=1
      puts "#{counter}. #{s.name}" #{} - #{s.name} - #{s.genre.name}"
    end
  end

  def list_songs_by_artist

    puts "Please enter the name of an artist:"
    artist_name = gets.strip


    artist_name
    binding.pry
    #.sort {|a,b| a <=> b}
    testhash.each do |s|
      counter+=1
      puts "#{counter}. #{s.name} - #{s.genre.name}"
    end

  end

end
