module BookKeeping
  VERSION = 3
end

# Clase Diferencia De Hamming
class Hamming
  def self.compute(adn1, adn2)
    dif = 0
    raise ArgumentError unless adn1.length == adn2.length
    adn1.each_char.with_index do |letra, posi|
      dif += 1 unless adn2 [posi.to_i] == letra
    end
    dif
  end
end
