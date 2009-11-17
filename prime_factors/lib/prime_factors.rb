class PrimeFactors
  def self.generate(number)
    list = []
    if number > 1
      while number % 2 == 0
        list << 2
        number /= 2
      end
      while number % 3 == 0
        list << 3
        number /= 3
      end
    end
    list << number if number > 1
    list
  end  
end