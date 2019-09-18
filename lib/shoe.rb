class Shoe
  attr_accessor :color,:material, :condition, :size
  attr_reader :brand 

  def initialize(brand)
    @brand = brand
    BRANDS.size.times do |i|
    if BRANDS[i] == @brand
      return
    end
  end
  BRANDS << @brand
end


BRANDS = []


  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end