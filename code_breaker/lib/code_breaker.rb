module CodeBreaker
  class Marker
    def initialize(secret_combination)
      @secret = secret_combination
    end
    
    def guess(combination)
      match = @secret - combination
      ["m"] * (@secret.length - match.length )
    end
  end
end