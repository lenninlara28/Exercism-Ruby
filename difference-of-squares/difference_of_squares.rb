module BookKeeping
  VERSION = 4
end
# Clase Diferencia entre el cuadrado de la suma y la suma de los cuadrados
class Squares
  def initialize(num)
    @numero = num
  end

  def square_of_sum
    (1..@numero).sum**2
  end

  def sum_of_squares
    (1..@numero).sum { |index| index**2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
