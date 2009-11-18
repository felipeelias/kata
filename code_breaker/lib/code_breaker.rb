module CodeBreaker
  class Marker
    def initialize(secret_combination)
      @secret = secret_combination
    end
    
    def guess(combination)
      matches = []
      combination.each_with_index do |color, index|
        matches << "p" if color == @secret[index]
        matches << "m" if @secret.include? color and color != @secret[index]
      end
      matches
    end
  end
end