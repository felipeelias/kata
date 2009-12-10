module StringCalculator
  def add
    raise_if_negative_numbers
    return 0 if self.empty?
    return self.to_i if numbers.length == 1
    numbers.inject { |sum, number| sum += number }
  end
  
  private
  
  def numbers
    @numbers ||= self.split(delimiter).map { |s| s.to_i }
  end
  
  def delimiter
    @delimiter ||= self =~ /^\/\/(.)/ ? $1 : /[,\n]/
  end
  
  def negatives
    numbers.select { |n| n < 0 }
  end
  
  def raise_if_negative_numbers
    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any? 
  end
end