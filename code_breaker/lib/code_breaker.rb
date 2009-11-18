module CodeBreaker
  class Marker
    def initialize(secret_combination)
      @secret = secret_combination
    end
    
    def guess(combination)
      @guess = combination
    end
    
    def mark
      ["m"] * number_of_non_positional_matches + 
      ["p"] * number_of_positional_matches
    end
    
    private
    
    def number_of_non_positional_matches
      (@secret & @guess).size - number_of_positional_matches
    end
    
    def number_of_positional_matches
      [@secret, @guess].transpose.inject(0) do |sum, colors|
        sum + (colors[0] == colors[1] ? 1 : 0)
      end
    end
  end
end