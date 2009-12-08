module StringCalculator
  def add
    return 0 if self.empty?
    return self.to_i if numbers.length == 1
    numbers[0] + numbers[1]
  end
  
  private
  
  def numbers
    @numbers ||= self.split(',').map { |s| s.to_i }
  end
end