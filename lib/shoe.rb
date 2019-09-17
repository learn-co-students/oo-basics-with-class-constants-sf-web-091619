class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS.length.times do |i|
      if BRANDS[i] == @brand
        return
      end
    end
    BRANDS << @brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end


# class Book
#   attr_accessor :author, :page_count  # remove the attr_accessor for genre
#   attr_reader :title, :genre  # add an attr_reader for genre
 
#   GENRES = []
 
#   def initialize(title)
#     @title = title
#   end
 
#   def turn_page
#     puts "Flipping the page...wow, you read fast!"
#   end
 
#   # create the writer for genre and add the logic for the class constant
#   def genre=(genre)
#     @genre = genre
#     GENRES << genre 
#   end
# end