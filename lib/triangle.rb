class Triangle
  attr_accessor :length , :base , :height

  def initialize length , base , height
      sides=[length,base,height].sort
    
      if [length,base,height].any? {|x| x <= 0}

        raise TriangleError
      end
        unless sides[0]+sides[1] > sides[2]
            
        raise TriangleError
        end
      
       @length =length

       @base = base

       @height = height
      
      
  

end

def kind
  
  type = if (self.length == self.base && self.length == self.height)
  
    :equilateral
 
 
   else if  (self.length == self.base || self.length == self.height || self.base == self.height)
   :isosceles

   else 
  :scalene
  end

  end
  
 end


  class TriangleError < StandardError

  end
end

triangle1=Triangle.new(5,5,6)
puts triangle1.kind

triangle2=Triangle.new(2,2,2)
puts triangle2.kind

triangle3=Triangle.new(3,4,5)
puts triangle3.kind

triangle4=Triangle.new(1,2,2)
puts triangle4.kind
