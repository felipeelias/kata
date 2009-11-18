module CodeBreaker
  class Marker
    def initialize(secret_combination)
      @secret = secret_combination
    end
    
    def guess(combination)
      ["m"] * number_of_non_positional_matches(combination) + 
      ["p"] * number_of_positional_matches(combination)
    end
    
    private
    
    def number_of_non_positional_matches(combination)
      (@secret & combination).size - number_of_positional_matches(combination)
    end
    
    def number_of_positional_matches(combination)
      [@secret, combination].transpose.inject(0) do |sum, colors|
        sum + (colors[0] == colors[1] ? 1 : 0)
      end
    end
  end
end