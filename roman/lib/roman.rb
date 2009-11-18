class RomanNumber

  NUMERALS = [
    [1000, "M"],
    [900, "CM"],
    [500, "D"],
    [400, "CD"],
    [100, "C"],
    [90, "XC"],
    [50, "L"],
    [40, "XL"],
    [10, "X"],
    [9, "IX"],
    [5, "V"],
    [4, "IV"],
    [1, "I"],
  ]
  
  def parse(number)
    roman = ""
    arabic = number
    for key, value in NUMERALS
      count, arabic = arabic.divmod(key)
      roman << (value * count)
    end
    roman
  end
  
end