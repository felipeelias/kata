module StringCalculator
  def add
    return 0 if self.empty?
    strs = self.split(',').map { |s| s.to_i }
    return self.to_i if strs.length == 1
    strs[0] + strs[1]
  end
end