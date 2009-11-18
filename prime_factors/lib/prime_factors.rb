module PrimeFactors
  def self.of(n)
    return [] if n == 1
    factor = (2..n).find {|x| n % x == 0} 
    [factor] + of(n / factor)
  end  
end