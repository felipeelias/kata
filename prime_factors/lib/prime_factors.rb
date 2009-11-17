module PrimeFactors
  def self.of(number)
    list = []
    if number > 1
      candidate = 2
      while number > 1
        while number % candidate == 0
          list << candidate
          number /= candidate
        end
        candidate += 1
      end
    end
    list << number if number > 1
    list
  end  
end