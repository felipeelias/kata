module PrimeFactors
  def self.of(number)
    factors = []
    candidate = 2
    while number > 1
      factors << candidate and number /= candidate while number % candidate == 0
      candidate += 1
    end
    factors
  end  
end