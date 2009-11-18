class RomanNumber

  ROMANS = {
    1 => "I",
    5 => "V",
    10 => "X",
    50 => "L",
    100 => "C",
    500 => "D",
    1000 => "M",
  }
  
  def parse(number)
    ROMANS[number]
  end
  
end