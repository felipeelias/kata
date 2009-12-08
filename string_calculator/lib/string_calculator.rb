module StringCalculator
  def add
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
end